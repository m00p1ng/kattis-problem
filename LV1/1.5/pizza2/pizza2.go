package main

import "fmt"

func main() {
	var r, c float64
	fmt.Scanf("%f %f", &r, &c)
	d := 1 - c/r
	fmt.Println(d * d * 100)
}
