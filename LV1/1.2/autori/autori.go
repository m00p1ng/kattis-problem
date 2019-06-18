package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scanln(&s)
	result := strings.Split(s, "-")

	for _, w := range result {
		fmt.Print(string(w[0]))
	}
	fmt.Println()
}
