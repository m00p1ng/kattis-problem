package main

import (
	"fmt"
)

func main() {
	n := 0
	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		m := 0
		fmt.Scanf("%d", &m)

		rem := 0
		if m%400 != 0 {
			rem = 1
		}

		fmt.Println(m/400 + rem)
	}
}
