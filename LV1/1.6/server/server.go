package main

import "fmt"

func main() {
	var n, t, ans, total int
	fmt.Scanf("%d %d", &n, &t)
	l := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &l[i])
	}

	for i := 0; i < n; i++ {
		total += l[i]
		if total > t {
			break
		}
		ans++
	}
	fmt.Println(ans)
}
