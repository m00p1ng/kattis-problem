package main

import (
	"fmt"
)

func findMin(cnt ...int) int {
	res := 100
	for _, c := range cnt {
		if c < res {
			res = c
		}
	}
	return res
}

func calcCard(cnt ...int) int {
	res := 0
	for _, c := range cnt {
		res += c * c
	}
	return res
}

func main() {
	var s string
	fmt.Scanln(&s)

	cnt := []int{0, 0, 0}

	for _, c := range s {
		switch c {
		case 'T':
			cnt[0]++
		case 'C':
			cnt[1]++
		case 'G':
			cnt[2]++
		}
	}

	fmt.Println(calcCard(cnt...) + 7*findMin(cnt...))
}
