package main

import (
	"fmt"
	"math"
)

func main() {
	var n float64
	fmt.Scanf("%f", &n)

	fmt.Println(math.Round(n * 5280.0 * 1000.0 / 4854.0))
}
