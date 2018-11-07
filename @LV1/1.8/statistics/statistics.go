package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	ts := 1
	scanner := bufio.NewScanner(os.Stdin)

	for scanner.Scan() {
		s := scanner.Text()
		n := strings.Split(s, " ")

		sz, _ := strconv.Atoi(n[0])
		mx := -1000000
		mn := 1000000

		for i := 1; i <= sz; i++ {
			tmp, _ := strconv.Atoi(n[i])
			if tmp > mx {
				mx = tmp
			}
			if tmp < mn {
				mn = tmp
			}
		}
		fmt.Printf("Case %d: %d %d %d\n", ts, mn, mx, mx-mn)
		ts++
	}
}
