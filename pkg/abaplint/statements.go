package abaplint

// Statement represents a parsed ABAP statement (one or more tokens ending at period).
// The statement splitter handles colon chaining: "DATA: a TYPE i, b TYPE string."
// becomes two statements: [DATA a TYPE i ,] and [DATA b TYPE string .]
type Statement struct {
	Tokens  []Token
	Pragmas []Token // pragma tokens (##...) stripped from main token list
	Type    string  // "Unknown", "Comment", "Empty", or matched statement type
	Colon   *Token  // the colon token if this was part of a chained statement
}

// ConcatTokens returns all token strings joined by space.
func (s *Statement) ConcatTokens() string {
	if len(s.Tokens) == 0 {
		return ""
	}
	result := s.Tokens[0].Str
	for i := 1; i < len(s.Tokens); i++ {
		result += " " + s.Tokens[i].Str
	}
	return result
}

// FirstTokenStr returns the uppercase string of the first token, or empty.
func (s *Statement) FirstTokenStr() string {
	if len(s.Tokens) == 0 {
		return ""
	}
	return toUpper(s.Tokens[0].Str)
}

// StatementParser splits lexer tokens into statements, handling colon chaining.
// This is a mechanical port of abaplint's StatementParser.process().
type StatementParser struct{}

// Parse splits tokens into statements. Handles:
// - Period (.) terminates a statement
// - Colon (:) starts chaining — prefix is shared across comma-separated parts
// - Comma (,) within chaining starts next chained statement (with same prefix)
// - Comment tokens become their own Comment statements
func (p *StatementParser) Parse(tokens []Token) []Statement {
	var statements []Statement
	var add []Token   // current tokens being accumulated
	var pre []Token   // prefix tokens (before colon)
	var colon *Token  // the colon token, if in chaining mode

	for _, token := range tokens {
		if token.Type == TokenComment {
			statements = append(statements, Statement{
				Tokens: []Token{token},
				Type:   "Comment",
			})
			continue
		}

		add = append(add, token)

		if len(token.Str) == 1 {
			switch token.Str {
			case ".":
				// End of statement
				stmt := buildStatement(pre, add, colon)
				statements = append(statements, stmt)
				add = nil
				pre = nil
				colon = nil

			case ",":
				if len(pre) > 0 {
					// Chained statement separator
					stmt := buildStatement(pre, add, colon)
					statements = append(statements, stmt)
					add = nil
				}

			case ":":
				if colon == nil {
					// First colon — start chaining
					colonTok := add[len(add)-1]
					colon = &colonTok
					add = add[:len(add)-1] // remove colon from tokens
					pre = append(pre, add...)
					add = nil
				} else {
					// Additional colons — just remove them
					add = add[:len(add)-1]
				}
			}
		}
	}

	// Remaining tokens
	if len(add) > 0 {
		stmt := buildStatement(pre, add, colon)
		statements = append(statements, stmt)
	}

	return statements
}

func buildStatement(pre, add []Token, colon *Token) Statement {
	var tokens []Token
	tokens = append(tokens, pre...)
	tokens = append(tokens, add...)

	// Separate pragmas from statement tokens (matching abaplint behavior).
	// Pragmas are removed from the token list but kept in the Pragmas field.
	var filtered []Token
	var pragmas []Token
	for i, tok := range tokens {
		if tok.Type == TokenPragma && i < len(tokens)-1 {
			// Skip pragmas (but not the last token which is punctuation)
			pragmas = append(pragmas, tok)
		} else {
			filtered = append(filtered, tok)
		}
	}

	stmtType := "Unknown"
	if len(filtered) == 1 && filtered[0].Type == TokenPunctuation {
		stmtType = "Empty"
	}

	return Statement{
		Tokens:  filtered,
		Pragmas: pragmas,
		Type:    stmtType,
		Colon:   colon,
	}
}

// toUpper is a simple ASCII upper for ABAP keywords.
func toUpper(s string) string {
	b := make([]byte, len(s))
	for i := 0; i < len(s); i++ {
		c := s[i]
		if c >= 'a' && c <= 'z' {
			c -= 32
		}
		b[i] = c
	}
	return string(b)
}
