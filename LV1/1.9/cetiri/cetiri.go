package main

import (
	"fmt"
	"sort"
)

func main() {
	l := make([]int, 3)
	fmt.Scanf("%d %d %d", &l[0], &l[1], &l[2])

	sort.Ints(l)

	d1 := l[1] - l[0]
	d2 := l[2] - l[1]

	if d1 == d2 {
		fmt.Println(l[2] + d1)
	} else if d1 > d2 {
		fmt.Println(l[0] + d1/2)
	} else {
		fmt.Println(l[1] + d2/2)
	}
}
