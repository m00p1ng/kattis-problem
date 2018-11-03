package main

import "fmt"

func main() {
	var x1, x2, x3, y1, y2, y3, x, y int
	fmt.Scanf("%d %d", &x1, &y1)
	fmt.Scanf("%d %d", &x2, &y2)
	fmt.Scanf("%d %d", &x3, &y3)

	if x1 == x2 {
		x = x3
	} else if x1 == x3 {
		x = x2
	} else {
		x = x1
	}

	if y1 == y2 {
		y = y3
	} else if y1 == y3 {
		y = y2
	} else {
		y = y1
	}

	fmt.Println(x, y)
}
