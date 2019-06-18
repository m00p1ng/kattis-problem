package main

import "fmt"

func main() {
	var x int
	piece := []int{1, 1, 2, 2, 2, 8}

	for i := 0; i < 6; i++ {
		fmt.Scanf("%d", &x)
		fmt.Printf("%d ", piece[i]-x)
	}

}
