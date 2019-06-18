package main

import "fmt"

func main() {
	var n int
	var sum, l, temp float64

	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%f", &temp)
		if temp >= 0 {
			sum += temp
			l++
		}
	}
	fmt.Println(sum / l)
}
