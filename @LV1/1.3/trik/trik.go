package main

import "fmt"

func main() {
	a, b, c := 1, 0, 0

	var s string
	fmt.Scanln(&s)

	for _, ch := range s {
		if ch == 'A' {
			a, b = b, a
		} else if ch == 'B' {
			b, c = c, b
		} else {
			a, c = c, a
		}
	}

	if a != 0 {
		fmt.Println(1)
	} else if b != 0 {
		fmt.Println(2)
	} else {
		fmt.Println(3)
	}
}
