package main

import (
	"fmt"
	"math"
)

func main() {
	var n float64
	fmt.Scanf("%f", &n)
	fmt.Println(math.Pow(n, 1/n))
}
