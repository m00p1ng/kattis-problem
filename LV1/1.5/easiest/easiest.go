package main

import "fmt"

func sumDigit(n int) int {
	ans := 0
	temp := n

	for temp > 0 {
		ans += temp % 10
		temp /= 10
	}
	return ans
}

func main() {
	for {
		var n int
		fmt.Scanf("%d", &n)
		if n == 0 {
			break
		}

		i := 11
		sumN := sumDigit(n)

		for {
			sumI := sumDigit(n * i)
			if sumI == sumN {
				fmt.Println(i)
				break
			}
			i++
		}
	}
}
