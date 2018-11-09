package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	var s string
	cnt := 1
	isMakeSense := true

	for i := 0; i < n; i++ {
		fmt.Scanf("%s", &s)

		num, err := strconv.Atoi(s)

		if err == nil && num != cnt {
			isMakeSense = false
			break
		}

		cnt++
	}

	if isMakeSense {
		fmt.Println("makes sense")
	} else {
		fmt.Println("something is fishy")
	}
}
