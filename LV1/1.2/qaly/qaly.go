package main

import "fmt"

func main() {
	var n int
	var a, b, ans float64
	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%f %f", &a, &b)
		ans += a * b
	}
	fmt.Println(ans)
}
