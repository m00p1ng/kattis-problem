package main

import "fmt"

func avg(n int, score []float64) float64 {
	sum := 0.0
	for i := 0; i < n; i++ {
		sum += score[i]
	}
	return sum / float64(n)
}

func main() {
	var n, m int
	score := make([]float64, 1000)
	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &m)
		for j := 0; j < m; j++ {
			fmt.Scanf("%f", &score[j])
		}
		mean := avg(m, score)
		remain := 0.0

		for j := 0; j < m; j++ {
			if score[j] > mean {
				remain++
			}
		}
		fmt.Printf("%.3f%%\n", 100.0*remain/float64(m))
	}
}
