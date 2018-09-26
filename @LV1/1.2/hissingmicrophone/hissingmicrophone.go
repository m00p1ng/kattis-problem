package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)

	if strings.Index(s, "ss") > -1 {
		fmt.Println("hiss")

	} else {
		fmt.Println("no hiss")
	}
}
