package main

import "fmt"

func pow(a int, b int) int {
	ans := 1
	for i := 0; i < b; i++ {
		ans *= a
	}
	return ans
}

func main() {
	var n, tmp, sum int

	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &tmp)
		sum += pow(tmp/10, tmp%10)
	}
	fmt.Println(sum)
}
