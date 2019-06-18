package main

import (
	"fmt"
	"sort"
)

func main() {
	for {
		l := make([]int, 3)
		fmt.Scanf("%d %d %d", &l[0], &l[1], &l[2])

		if l[0] == 0 && l[1] == 0 && l[2] == 0 {
			break
		}

		sort.Ints(l)

		if l[0]*l[0]+l[1]*l[1] == l[2]*l[2] {
			fmt.Println("right")
		} else {
			fmt.Println("wrong")
		}
	}
}
