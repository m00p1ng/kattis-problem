package main

import "fmt"

func main() {
	var n, k, r int
	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%d %d", &k, &r)
		sumR := r * (r + 1) / 2
		fmt.Println(k, sumR, 2*sumR-r, 2*sumR)
	}
}
