// function (#1)
// package main

// import "fmt"

// func main() {
// 	greet("Airell", 23)
// }

// func greet(name string, age int8) {
// 	fmt.Printf("Hello there! My name is %s and I'm %d years old", name, age)
// }

// package main

// import "fmt"

// func main() {
// 	greet("Airell", "jalan sudirman")
// }

// func greet(name, address string) {
// 	fmt.Println("Helslo there! My name is", name)
// 	fmt.Println("I live in", address)
// }

//function (Return)
// package main

// import (
// 	"fmt"
// 	"strings"
// )

// func main() {
// 	var names = []string{"Airell", "Jordan"}
// 	var printMsg = greet("Heii", names)

// 	fmt.Println(printMsg)
// }

// func greet(msg string, names []string) string {
// 	var joinStr = strings.Join(names, " ")

// 	var result string = fmt.Sprintf("%s %s", msg, joinStr)

// 	return result
// }

//function (Returning mulitple values)
// package main

// import (
// 	"fmt"
// 	"math"
// )

// func main() {
// 	var diameter float64 = 15

// 	var area, circumference = calculate(diameter)

// 	fmt.Println("Area:", area)
// 	fmt.Println("Circumference:", circumference)
// }

// func calculate(d float64) (float64, float64) {
// 	//Menghitung luas
// 	var area float64 = math.Pi * math.Pow(d/2, 2)
// 	//Menghitung keliling

// 	var circumference = math.Pi * d

// 	return area, circumference
// }

//function (Predefind return value)
// package main

// import (
// 	"fmt"
// 	"math"
// )

// func main() {
// 	var diameter float64 = 15

// 	var area, circumference = calculate(diameter)

// 	fmt.Println("Area:", area)
// 	fmt.Println("Circumference:", circumference)
// }

// func calculate(d float64) (area float64, circumference float64) {
// 	//Menghitung luas
// 	area = math.Pi * math.Pow(d/2, 2)
// 	//Menghitung keliling

// 	circumference = math.Pi * d

// 	return
// }

//function (Variadic function #1)
// package main

// import "fmt"

// func main() {
// 	studentLists := print("Airell", "Nanda", "Mailo", "Schannel", "Marco")

// 	fmt.Printf("%v", studentLists)
// }

// func print(names ...string) []map[string]string {
// 	var result []map[string]string

// 	for i, v := range names {
// 		key := fmt.Sprintf("student%d", i+1)
// 		temp := map[string]string{
// 			key: v,
// 		}
// 		result = append(result, temp)
// 	}

// 	return result
// }

//function (Variadic function #2)
// package main

// import "fmt"

// func main() {
// 	numberLists := []int{1, 2, 3, 4, 5, 6, 7, 8}

// 	result := sum(numberLists...)

// 	fmt.Println("Result:", result)
// }

// func sum(numbers ...int) int {
// 	total := 0

// 	for _, v := range numbers {
// 		total += v
// 	}
// 	return total
// }

//function (Variadic function #3)
package main

import (
	"fmt"
	"strings"
)

func main() {
	profile("Airell", "pasta", "ayam geprek", "ikan roa", "sate padang")
}

func profile(name string, favFoods ...string) {
	mergeFavFoods := strings.Join(favFoods, ",")

	fmt.Println("Hello there!!! I'm", name)
	fmt.Println("I really love to eat", mergeFavFoods)
}
