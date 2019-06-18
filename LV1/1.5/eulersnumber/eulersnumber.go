package main

import "fmt"

func evalEuler(n int) float64 {
	if n == 0 {
		return 1
	}
	if n == 1 {
		return 2
	}

	fac := 1.0
	euler := 2.0

	for i := 2; i <= n; i++ {
		fac /= float64(i)
		euler += fac
	}

	return euler
}

func main() {
	var n int
	fmt.Scanf("%d", &n)
	euler := evalEuler(n)

	fmt.Printf("%.20f\n", euler+1E-16)
}
