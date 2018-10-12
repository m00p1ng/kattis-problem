package main

import "fmt"

func main() {
	var r, e, c, n int
	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%d %d %d", &r, &e, &c)
		diff := e - r

		if diff == c {
			fmt.Println("does not matter")
		} else if diff > c {
			fmt.Println("advertise")
		} else {
			fmt.Println("do not advertise")
		}

	}
}
