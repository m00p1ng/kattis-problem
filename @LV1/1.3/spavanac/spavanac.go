package main

import "fmt"

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)
	b -= 45

	if b < 0 {
		b += 60
		a--
	}

	if a < 0 {
		a = 23
	}

	fmt.Println(a, b)
}
