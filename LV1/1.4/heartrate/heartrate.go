package main

import "fmt"

func main() {
	n := 0
	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		var b, p float64
		fmt.Scanf("%f %f", &b, &p)

		bpm := 60 * b / p
		abpm := 60 / p
		fmt.Println(bpm-abpm, bpm, bpm+abpm)
	}
}
