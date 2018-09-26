package main

import "fmt"

func main() {
	var x, n, tmp, total int
	fmt.Scanf("%d\n%d", &x, &n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &tmp)
		total += tmp
	}

	fmt.Println(n*x + x - total)
}
