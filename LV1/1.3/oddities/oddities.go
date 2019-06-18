package main

import "fmt"

func main() {
	var n int
	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		var num int
		fmt.Scanf("%d", &num)
		if num%2 == 0 {
			fmt.Printf("%d is even\n", num)
		} else {
			fmt.Printf("%d is odd\n", num)
		}
	}
}
