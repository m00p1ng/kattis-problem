package main

import "fmt"

func main() {
	var a, b string
	fmt.Scanln(&a)
	fmt.Scanln(&b)

	if len(a) < len(b) {
		fmt.Println("no")
	} else {
		fmt.Println("go")
	}
}
