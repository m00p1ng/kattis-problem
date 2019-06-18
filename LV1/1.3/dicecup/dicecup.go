package main

import "fmt"

func main() {
	var n, m int
	fmt.Scanf("%d %d", &n, &m)

	if m > n {
		m, n = n, m
	}

	for i := m + 1; i <= n+1; i++ {
		fmt.Println(i)
	}
}
