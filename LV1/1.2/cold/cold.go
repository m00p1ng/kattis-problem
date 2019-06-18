package main

import "fmt"

func main() {
	var n, ans, tmp int
	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &tmp)
		if tmp < 0 {
			ans++
		}
	}

	fmt.Println(ans)
}
