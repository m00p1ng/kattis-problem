package main

import "fmt"

func main() {
	var n, m, tmp int
	fmt.Scanf("%d", &n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &m)
		max, min := 0, 1000
		for j := 0; j < m; j++ {
			fmt.Scanf("%d", &tmp)
			if tmp > max {
				max = tmp
			}
			if tmp < min {
				min = tmp
			}

		}

		fmt.Println(2 * (max - min))
	}
}
