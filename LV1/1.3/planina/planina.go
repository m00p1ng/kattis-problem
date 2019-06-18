package main

import (
	"fmt"
)

func main() {
	var n uint
	fmt.Scanf("%d", &n)
	d := (1 << n) + 1
	fmt.Println(d * d)
}
