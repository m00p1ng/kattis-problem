// +----------+
// | TOO SLOW |
// +----------+
package main

import (
	"fmt"
)

func main() {
	var n, m, B int
	A := make([]int, 1000010)

	for {
		fmt.Scanf("%d %d", &n, &m)
		if n == 0 && m == 0 {
			break
		}

		var idx, cnt int

		for i := 0; i < n; i++ {
			fmt.Scanf("%d", &A[i])
		}

		for i := 0; i < m; i++ {
			fmt.Scanf("%d", &B)
			for idx < n && B > A[idx] {
				idx++
			}
			if idx < n && B == A[idx] {
				cnt++
			}
		}
		fmt.Printf("%d\n", cnt)
	}
}
