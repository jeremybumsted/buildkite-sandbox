package main

import(
	"fmt"
)

func main() {
	x := Add(1, 2)
	y := Subtract(5,2)

	r := fmt.Sprint(x, y)

	fmt.Println(r)
}

// Add is our function that sums two integers
func Add(x, y int) (res int) {
	return x + y
}

// Subtract subtracts two integers
func Subtract(x, y int) (res int) {
	return x - y
}
