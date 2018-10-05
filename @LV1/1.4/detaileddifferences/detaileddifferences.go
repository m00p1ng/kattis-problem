package main

import "fmt"

func main() {
	var n int
	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		var a, b, out string
		fmt.Scanln(&a)
		fmt.Scanln(&b)

		l := len(a)
		for j := 0; j < l; j++ {
			if a[j] == b[j] {
				out += "."
			} else {
				out += "*"
			}
		}
		fmt.Println(a)
		fmt.Println(b)
		fmt.Println(out)
		fmt.Println()
	}
}
