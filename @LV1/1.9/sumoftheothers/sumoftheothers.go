package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scan := bufio.NewScanner(os.Stdin)

	for scan.Scan() {
		s := strings.Split(scan.Text(), " ")

		sum := 0
		for _, n := range s {
			num, _ := strconv.Atoi(n)
			sum += num
		}

		fmt.Println(sum / 2)
	}
}
