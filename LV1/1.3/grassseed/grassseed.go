package main

import "fmt"

func main() {
	var c float64
	var n int

	fmt.Scanf("%f", &c)
	fmt.Scanf("%d", &n)

	ans := 0.0

	for i := 0; i < n; i++ {
		var w, h float64
		fmt.Scanf("%f %f", &w, &h)
		ans += w * h
	}
	fmt.Println(ans * c)
}
