package main

import "fmt"

func main() {
	var n int
	fmt.Scanf("%d", &n)

	if n % 2 == 1 {
		fmt.Println("Alice")
	} else {
		fmt.Println("Bob")
	}
}