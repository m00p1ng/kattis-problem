package main

import "fmt"

func main() {
	var buff string
	fmt.Scanln(&buff)

	s := len(buff)
	l := s - 1
	x := 0
	y := 0

	for i, c := range buff {
		n := c - '0'

		if n == 1 || n == 3 {
			x |= 1 << uint(l-i)
		}
		if n == 2 || n == 3 {
			y |= 1 << uint(l-i)
		}
	}

	fmt.Println(s, x, y)
}
