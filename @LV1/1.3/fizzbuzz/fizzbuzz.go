package main

import "fmt"

func fizzbuzz(x int, y int, n int) string {
	mx := n%x == 0
	my := n%y == 0

	if mx && my {
		return "FizzBuzz"
	} else if mx {
		return "Fizz"
	} else if my {
		return "Buzz"
	} else {
		return fmt.Sprintf("%d", n)
	}
}

func main() {
	var x, y, n int

	fmt.Scanf("%d %d %d", &x, &y, &n)

	for i := 1; i <= n; i++ {
		fmt.Println(fizzbuzz(x, y, i))
	}
}
