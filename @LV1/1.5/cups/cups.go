package main

import (
	"fmt"
	"sort"
	"strconv"
	"unicode"
)

type cup struct {
	radius int
	name   string
}

type cups []cup

func (c cups) Len() int {
	return len(c)
}

func (c cups) Swap(i, j int) {
	c[i], c[j] = c[j], c[i]
}

func (c cups) Less(i, j int) bool {
	return c[i].radius < c[j].radius
}

func main() {
	var n int
	var a, b string
	var l cups

	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%s %s", &a, &b)
		if unicode.IsDigit(rune(a[0])) {
			tmp, _ := strconv.Atoi(a)
			l = append(l, cup{radius: tmp, name: b})
		} else {
			tmp, _ := strconv.Atoi(b)
			l = append(l, cup{radius: 2 * tmp, name: a})
		}
	}

	sort.Sort(l)
	for _, c := range l {
		fmt.Println(c.name)
	}
}
