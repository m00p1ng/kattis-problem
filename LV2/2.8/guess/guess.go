package main

import "fmt"

func main() {
	l := 1
	r := 1001
	var ans string

	for {
		m := (l + r) / 2
		fmt.Println(m)
		fmt.Scanln(&ans)

		if ans == "correct" {
			break
		}

		if ans == "lower" {
			r = m
		} else {
			l = m
		}
	}
}
