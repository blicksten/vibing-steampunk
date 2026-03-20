package abaplint

// combi.go implements a parser combinator DSL for matching ABAP statements.
// Mechanical port of abaplint's combi.ts. Simplified: no AST node building,
// just match/no-match against token lists.
//
// A Matcher takes a position in a token slice and returns all possible
// positions after matching (empty = no match).

import (
	"regexp"
	"strings"
)

// Matcher is a function that takes token slice + set of positions,
// and returns new set of positions after matching.
// Each position is an index into the token slice.
type Matcher func(tokens []Token, positions []int) []int

// --- Keyword / String matching ---

// Str matches a single keyword (case-insensitive).
func Str(keyword string) Matcher {
	upper := strings.ToUpper(keyword)
	return func(tokens []Token, positions []int) []int {
		var result []int
		for _, pos := range positions {
			if pos < len(tokens) && strings.ToUpper(tokens[pos].Str) == upper {
				result = append(result, pos+1)
			}
		}
		return result
	}
}

// Seq matches a sequence of matchers.
func Seq(matchers ...Matcher) Matcher {
	return func(tokens []Token, positions []int) []int {
		current := positions
		for _, m := range matchers {
			current = m(tokens, current)
			if len(current) == 0 {
				return nil
			}
		}
		return current
	}
}

// Alt tries all alternatives and returns ALL matches (non-priority).
func Alt(matchers ...Matcher) Matcher {
	return func(tokens []Token, positions []int) []int {
		var result []int
		for _, m := range matchers {
			result = append(result, m(tokens, positions)...)
		}
		return result
	}
}

// AltPrio tries alternatives in order, returns first that matches (priority).
func AltPrio(matchers ...Matcher) Matcher {
	return func(tokens []Token, positions []int) []int {
		for _, m := range matchers {
			r := m(tokens, positions)
			if len(r) > 0 {
				return r
			}
		}
		return nil
	}
}

// Opt optionally matches (returns original positions + matched positions).
func Opt(m Matcher) Matcher {
	return func(tokens []Token, positions []int) []int {
		result := make([]int, len(positions))
		copy(result, positions)
		result = append(result, m(tokens, positions)...)
		return result
	}
}

// OptPrio optionally matches (priority: if matches, only return matched).
func OptPrio(m Matcher) Matcher {
	return func(tokens []Token, positions []int) []int {
		r := m(tokens, positions)
		if len(r) > 0 {
			return r
		}
		return positions
	}
}

// Star matches zero or more repetitions.
func Star(m Matcher) Matcher {
	return func(tokens []Token, positions []int) []int {
		result := make([]int, len(positions))
		copy(result, positions)
		current := positions
		for {
			next := m(tokens, current)
			if len(next) == 0 {
				break
			}
			result = append(result, next...)
			current = next
		}
		return result
	}
}

// StarPrio matches zero or more repetitions (priority — greedy).
func StarPrio(m Matcher) Matcher {
	return func(tokens []Token, positions []int) []int {
		current := positions
		for {
			next := m(tokens, current)
			if len(next) == 0 {
				return current
			}
			current = next
		}
	}
}

// Plus matches one or more repetitions.
func Plus(m Matcher) Matcher {
	return func(tokens []Token, positions []int) []int {
		first := m(tokens, positions)
		if len(first) == 0 {
			return nil
		}
		result := make([]int, len(first))
		copy(result, first)
		current := first
		for {
			next := m(tokens, current)
			if len(next) == 0 {
				break
			}
			result = append(result, next...)
			current = next
		}
		return result
	}
}

// PlusPrio matches one or more repetitions (priority — greedy).
func PlusPrio(m Matcher) Matcher {
	return func(tokens []Token, positions []int) []int {
		current := m(tokens, positions)
		if len(current) == 0 {
			return nil
		}
		for {
			next := m(tokens, current)
			if len(next) == 0 {
				return current
			}
			current = next
		}
	}
}

// Per matches all matchers in any order (permutation). Each matcher used at most once.
func Per(matchers ...Matcher) Matcher {
	return func(tokens []Token, positions []int) []int {
		return perRecurse(tokens, positions, matchers, make([]bool, len(matchers)))
	}
}

func perRecurse(tokens []Token, positions []int, matchers []Matcher, used []bool) []int {
	result := make([]int, len(positions))
	copy(result, positions) // zero matches is OK (per = optional permutation)

	for i, m := range matchers {
		if used[i] {
			continue
		}
		r := m(tokens, positions)
		if len(r) > 0 {
			usedCopy := make([]bool, len(used))
			copy(usedCopy, used)
			usedCopy[i] = true
			deeper := perRecurse(tokens, r, matchers, usedCopy)
			result = append(result, deeper...)
		}
	}

	return result
}

// Tok matches a specific token type.
func Tok(tt TokenType) Matcher {
	return func(tokens []Token, positions []int) []int {
		var result []int
		for _, pos := range positions {
			if pos < len(tokens) && tokens[pos].Type == tt {
				result = append(result, pos+1)
			}
		}
		return result
	}
}

// Regex matches token string against a regexp.
func Regex(pattern string) Matcher {
	re := regexp.MustCompile("(?i)^" + pattern + "$")
	return func(tokens []Token, positions []int) []int {
		var result []int
		for _, pos := range positions {
			if pos < len(tokens) && re.MatchString(tokens[pos].Str) {
				result = append(result, pos+1)
			}
		}
		return result
	}
}

// AnyToken matches any single token.
func AnyToken() Matcher {
	return func(tokens []Token, positions []int) []int {
		var result []int
		for _, pos := range positions {
			if pos < len(tokens) {
				result = append(result, pos+1)
			}
		}
		return result
	}
}

// --- Top-level matching ---

// Match tests if a matcher consumes all tokens in the slice.
func Match(m Matcher, tokens []Token) bool {
	positions := m(tokens, []int{0})
	target := len(tokens)
	for _, p := range positions {
		if p == target {
			return true
		}
	}
	return false
}

// MatchPrefix tests if a matcher consumes tokens starting from position 0.
// Returns the set of positions reached.
func MatchPrefix(m Matcher, tokens []Token) []int {
	return m(tokens, []int{0})
}
