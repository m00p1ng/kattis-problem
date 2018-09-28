package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var dict = map[rune]string{
	'a': "@",
	'b': "8",
	'c': "(",
	'd': "|)",
	'e': "3",
	'f': "#",
	'g': "6",
	'h': "[-]",
	'i': "|",
	'j': "_|",
	'k': "|<",
	'l': "1",
	'm': "[]\\/[]",
	'n': "[]\\[]",
	'o': "0",
	'p': "|D",
	'q': "(,)",
	'r': "|Z",
	's': "$",
	't': "']['",
	'u': "|_|",
	'v': "\\/",
	'w': "\\/\\/",
	'x': "}{",
	'y': "`/",
	'z': "2",
}

func transform(s string) {
	for _, c := range s {
		if dict[c] != "" {
			fmt.Print(dict[c])
		} else {
			fmt.Print(string(c))
		}
	}
	fmt.Println()
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		s := scanner.Text()
		transform(strings.ToLower(s))
	}
}
