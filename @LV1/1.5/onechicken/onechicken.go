package main

import (
	"fmt"
)

func abs(n int) int {
	if n > 0 {
		return n
	}
	return -n
}

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)

	diff := a - b
	p := "piece"

	if abs(diff) != 1 {
		p += string('s')
	}

	if diff > 0 {
		fmt.Printf("Dr. Chaz needs %d more %s of chicken!\n", diff, p)
	} else {
		fmt.Printf("Dr. Chaz will have %d %s of chicken left over!\n", -diff, p)
	}
}
