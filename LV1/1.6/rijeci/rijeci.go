package main

import "fmt"

var fib []int

func genFibo() {
	fib[0] = 0
	fib[1] = 1

	for i := 2; i < 50; i++ {
		fib[i] = fib[i-1] + fib[i-2]
	}
}

func main() {
	fib = make([]int, 50)
	genFibo()

	var n int
	fmt.Scanf("%d", &n)

	fmt.Println(fib[n-1], fib[n])
}
