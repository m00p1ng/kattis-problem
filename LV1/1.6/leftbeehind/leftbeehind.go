package main

import "fmt"

func main() {
	var a, b int

	for {
		fmt.Scanf("%d %d", &a, &b)
		if a == 0 && b == 0 {
			break
		}

		switch {
		case a+b == 13:
			fmt.Println("Never speak again.")
		case a == b:
			fmt.Println("Undecided.")
		case a > b:
			fmt.Println("To the convention.")
		default:
			fmt.Println("Left beehind.")
		}
	}
}
