package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	reader := bufio.NewScanner(os.Stdin)
	visited := make([]int, 42)
	cnt := 0

	for reader.Scan() {
		n, _ := strconv.Atoi(reader.Text())
		n %= 42

		if visited[n] == 0 {
			cnt++
			visited[n] = 1
		}
	}
	fmt.Println(cnt)
}
