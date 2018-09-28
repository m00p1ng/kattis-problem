package main

import (
	"fmt"
	"math"
)

func main() {
	var area float64
	fmt.Scanf("%f", &area)
	l := 4 * math.Sqrt(area)

	fmt.Println(l)
}
