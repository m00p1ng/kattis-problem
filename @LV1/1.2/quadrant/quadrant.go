package main

import "fmt"

func quadrant(x int, y int) int {
	if x > 0 && y > 0 {
		return 1
	} else if x < 0 && y > 0 {
		return 2
	} else if x < 0 && y < 0 {
		return 3
	} else {
		return 4
	}
}

func main() {
	var x, y int

	fmt.Scanf("%d\n%d", &x, &y)
	fmt.Println(quadrant(x, y))
}
