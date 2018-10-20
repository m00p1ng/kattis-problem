package main

import (
	"fmt"
	"unicode"
)

func main() {
	var s string
	l := make([]float64, 4)
	fmt.Scanln(&s)

	for _, c := range s {
		if c == '_' {
			l[0]++
		} else if unicode.IsLower(c) {
			l[1]++
		} else if unicode.IsUpper(c) {
			l[2]++
		} else {
			l[3]++
		}
	}

	sl := float64(len(s))
	for _, n := range l {
		fmt.Println(n / sl)
	}
}
