// +----------+
// | TOO SLOW |
// +----------+
package main

import "fmt"

func main() {
	var line string
	var cnt int
	out := make([]byte, 1000010)

	fmt.Scanln(&line)

	for _, ch := range line {
		if ch == '<' {
			if cnt > 0 {
				cnt--
			}
		} else {
			out[cnt] = byte(ch)
			cnt++
		}
	}
	fmt.Println(string(out[0:cnt]))
}
