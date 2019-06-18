package main

import "fmt"

func main() {
	var n, m int
	var s string
	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		var cnt int
		set := make(map[string]bool)

		fmt.Scanf("%d", &m)
		for j := 0; j < m; j++ {
			fmt.Scanln(&s)
			if !set[s] {
				set[s] = true
				cnt++
			}
		}
		fmt.Println(cnt)
	}
}
