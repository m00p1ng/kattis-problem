package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	var s, ae int
	scanner := bufio.NewScanner(os.Stdin)

	scanner.Scan()
	tmp := strings.Split(scanner.Text(), " ")

	for _, w := range tmp {
		s++
		if strings.Contains(w, "ae") {
			ae++
		}
	}

	if 10*ae >= 4*s {
		fmt.Println("dae ae ju traeligt va")
	} else {
		fmt.Println("haer talar vi rikssvenska")
	}
}
