package main

import (
	"fmt"
	"math"
)

func main() {
	var h, v float64
	fmt.Scanf("%f %f", &h, &v)
	ans := h / math.Sin(v/180*math.Pi)
	fmt.Println(math.Ceil(ans))
}
