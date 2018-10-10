package main

import "fmt"

func main() {
	var n, ans int
	fmt.Scanf("%d", &n)

	for n > 0 {
		ans = (ans << 1) + (n & 1)
		n >>= 1
	}
	fmt.Println(ans)
}
