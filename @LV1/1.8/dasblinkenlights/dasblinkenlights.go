package main

import "fmt"

func gcd(a int, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func main() {
	var a, b, tl int
	fmt.Scanf("%d %d %d", &a, &b, &tl)

	lcm := a * b / gcd(a, b)

	if tl/lcm >= 1 {
		fmt.Println("yes")
	} else {
		fmt.Println("no")
	}
}
