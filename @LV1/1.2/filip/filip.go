package main

import (
	"bufio"
	"fmt"
	"os"
)

func reverse(s string) string {
	out := []rune(s)
	for i, j := 0, len(out)-1; i < j; i, j = i+1, j-1 {
		out[i], out[j] = out[j], out[i]
	}
	return string(out)
}

func main() {
	reader := bufio.NewScanner(os.Stdin)
	if reader.Scan() {
		s := reader.Text()

		var a, b int
		fmt.Sscanf(reverse(s), "%d %d", &a, &b)

		if a > b {
			fmt.Println(a)
		} else {
			fmt.Println(b)
		}
	}
}
