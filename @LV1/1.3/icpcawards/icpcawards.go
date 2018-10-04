package main

import "fmt"

func main() {
	var n int
	cnt := 0
	uv := make(map[string]bool)

	fmt.Scanf("%d", &n)

	for i := 0; i < n && cnt < 12; i++ {
		var u, v string
		fmt.Scanf("%s %s", &u, &v)

		if !uv[u] {
			uv[u] = true
			fmt.Println(u, v)
			cnt++
		}
	}
}
