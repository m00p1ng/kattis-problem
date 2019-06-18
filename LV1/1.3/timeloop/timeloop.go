package main

import "fmt"

func main() {
	var n int
	fmt.Scanf("%d", &n)

	for i := 1; i <= n; i++ {
		fmt.Println(i, "Abracadabra")
	}
}
