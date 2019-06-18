package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func str2float64(s string) float64 {
	f64, _ := strconv.ParseFloat(s, 64)
	return f64
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)

	for scanner.Scan() {
		s := scanner.Text()
		if len(s) == 1 {
			break
		}

		buff := strings.Split(s, " ")
		x1 := str2float64(buff[0])
		x2 := str2float64(buff[2])
		y1 := str2float64(buff[1])
		y2 := str2float64(buff[3])
		p := str2float64(buff[4])

		ax := math.Pow(math.Abs(x1-x2), p)
		ay := math.Pow(math.Abs(y1-y2), p)

		ans := math.Pow(ax+ay, 1.0/p)
		fmt.Println(ans)
	}
}
