package main

import "fmt"

func solvable(a float64, b float64, c float64) bool {
	if a+b == c || a*b == c {
		return true
	} else if a-b == c || b-a == c {
		return true
	} else if a/b == c || b/a == c {
		return true
	}
	return false
}

func main() {
	var n int
	var a, b, c float64
	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%f %f %f", &a, &b, &c)
		if solvable(a, b, c) {
			fmt.Println("Possible")
		} else {

			fmt.Println("Impossible")
		}
	}
}
