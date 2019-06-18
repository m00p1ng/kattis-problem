package main

import (
	"fmt"
	"sort"
)

func main() {
	l := make([]int, 3)
	var o string

	for i := 0; i < 3; i++ {
		fmt.Scanf("%d", &l[i])
	}
	fmt.Scanln(&o)
	sort.Ints(l)

	for _, c := range []rune(o) {
		fmt.Printf("%d ", l[c-'A'])
	}
}
