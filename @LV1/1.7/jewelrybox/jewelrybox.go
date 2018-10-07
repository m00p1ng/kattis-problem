package main

import (
	"fmt"
	"math"
)

func findHeight(a float64, b float64) float64 {
	ab := a + b
	return (ab - math.Sqrt(ab*ab-3*a*b)) / 6.0
}

func maxVolumn(a float64, b float64) float64 {
	mH := findHeight(a, b)
	return mH * (a - 2*mH) * (b - 2*mH)
}

func main() {
	var n int
	var a, b float64
	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%f %f", &a, &b)
		fmt.Println(maxVolumn(a, b))
	}
}
