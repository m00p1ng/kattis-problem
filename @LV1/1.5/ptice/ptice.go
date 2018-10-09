package main

import "fmt"

var a, b, g []rune

func max(score []int) int {
	m := -1
	for i := 0; i < len(score); i++ {
		if score[i] > m {
			m = score[i]
		}
	}
	return m
}

func genAns() {
	for i := 0; i < 40; i++ {
		a = append(a, []rune("ABC")...)
		b = append(b, []rune("BABC")...)
		g = append(g, []rune("CCAABB")...)
	}
}

func main() {
	genAns()
	var n int
	var exam string
	score := []int{0, 0, 0}
	name := []string{"Adrian", "Bruno", "Goran"}

	fmt.Scanf("%d", &n)
	fmt.Scanln(&exam)

	for i, ch := range exam {
		if a[i] == ch {
			score[0]++
		}
		if b[i] == ch {
			score[1]++
		}
		if g[i] == ch {
			score[2]++
		}
	}
	m := max(score)

	fmt.Println(m)
	for i := 0; i < 3; i++ {
		if score[i] == m {
			fmt.Println(name[i])
		}
	}
}
