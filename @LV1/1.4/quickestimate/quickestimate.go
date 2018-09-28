package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		fmt.Scanln(&s)
		fmt.Println(len(s))
	}
}
