package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scanf("%d %d %d", &a, &b, &c)
	dab := b - a
	dbc := c - b

	m := 0
	if dab > dbc {
		m = dab
	} else {
		m = dbc
	}

	fmt.Println(m - 1)
}
