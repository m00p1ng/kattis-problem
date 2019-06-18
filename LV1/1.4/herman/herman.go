package main

import (
	"fmt"
	"math"
)

func main() {
	var r float64
	fmt.Scanf("%f", &r)
	fmt.Println(math.Pi * r * r)
	fmt.Println(2 * r * r)
}
