package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	var w, h float64
	fmt.Scanf("%d %f %f", &n, &w, &h)

	d := math.Sqrt(w*w + h*h)

	for i := 0; i < n; i++ {
		var k float64
		fmt.Scanf("%f", &k)

		if k <= d {
			fmt.Println("DA")
		} else {
			fmt.Println("NE")
		}
	}
}
