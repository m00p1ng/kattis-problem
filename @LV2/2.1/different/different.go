package main

import (
	"bufio"
	"fmt"
	"os"
)

func abs(a int64) int64 {
	if a > 0 {
		return a
	}
	return -a
}

func main() {
	var a, b int64
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {

		fmt.Sscanf(scanner.Text(), "%d %d", &a, &b)
		fmt.Println(abs(a - b))
	}
}
