package main

import (
	"fmt"
	"sort"
)

func main() {
	n := 0
	price := make([]int, 100010)
	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &price[i])
	}

	sort.Sort(sort.Reverse(sort.IntSlice(price[0:n])))

	sum := 0
	for i := 0; i < n; i += 3 {
		sum += price[i] + price[i+1]
	}
	fmt.Println(sum)
}
