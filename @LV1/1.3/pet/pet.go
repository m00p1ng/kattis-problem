package main

import "fmt"

func main() {
	var maxVal, idx int

	for i := 1; i <= 5; i++ {
		var sum, tmp int
		for j := 0; j < 4; j++ {
			fmt.Scanf("%d", &tmp)
			sum += tmp
		}
		if sum > maxVal {
			maxVal = sum
			idx = i
		}
	}
	fmt.Println(idx, maxVal)
}
