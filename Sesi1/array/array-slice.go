// Array introduction
// package main

// import "fmt"

// func main() {
// 	var numbers [4]int
// 	numbers = [4]int{1, 2, 3, 4}

// 	var strings = [3]string{"Airell", "Nanda", "Mailo"}

// 	fmt.Printf("%#v\n", numbers)
// 	fmt.Printf("%#v\n", strings)
// }

// Array (Modify element through index)
// package main

// import "fmt"

// func main() {
// 	var fruits = [3]string{"apel", "pisang", "mangga"}
// 	fruits[0] = "apple"
// 	fruits[1] = "banana"
// 	fruits[2] = "mango"

// 	fmt.Printf("%#v\n", fruits)
// }

//array loop

// package main

// import (
// 	"fmt"
// 	"strings"
// )

// func main() {

// 	var fruits = [3]string{"apple", "banana", "mango"}
// 	//Cara Pertama
// 	for i, v := range fruits {
// 		fmt.Printf("Index: %d, Value: %s\n", i, v)
// 	}

// 	fmt.Println(strings.Repeat("#", 25))

// 	//Cara Kedua
// 	for i := 0; i < len(fruits); i++ {
// 		fmt.Printf("Index: %d, Value: %s\n", i, fruits[i])
// 	}

// }

//array (Multidimensional array)

// package main

// import (
// 	"fmt"
// )

// func main() {

// 	balances := [2][3]int{{5, 6, 7}, {8, 9, 10}}

// 	for _, arr := range balances {
// 		for _, value := range arr {
// 			fmt.Printf("%d ", value)
// 		}
// 		fmt.Println()
// 	}

// }

//slice

// package main

// func main() {

// 	var fruits = []string{"apple", "banana", "mango"}

// 	_ = fruits

// }

//slice (make function)
// package main

// import "fmt"

// func main() {

// 	var fruits = make([]string, 3)
// 	_ = fruits

// 	fruits[0] = "apple"
// 	fruits[1] = "banana"
// 	fruits[3] = "mango"

// 	fmt.Printf("%#v", fruits)
// }

//slice (append function)

// package main

// import "fmt"

// func main() {

// 	var fruits = make([]string, 3)

// 	fruits = append(fruits, "apple", "banana", "mango")

// 	fmt.Printf("%#v", fruits)
// }

//slice (append function with ellipsis)

// package main

// import "fmt"

// func main() {

// 	var fruits1 = []string{"apple", "banana", "mango"}

// 	var fruits2 = []string{"durian", "pineapple", "starfruit"}

// 	fruits1 = append(fruits1, fruits2...)

// 	fmt.Printf("%#v", fruits1)
// }

//slice (copy function)
// package main

// import "fmt"

// func main() {

// 	var fruits1 = []string{"apple", "banana", "mango"}

// 	var fruits2 = []string{"durian", "pineapple", "starfruit"}

// 	nn := copy(fruits1, fruits2)

// 	fmt.Println("Fruits1 =>", fruits1)
// 	fmt.Println("Fruits2 =>", fruits2)
// 	fmt.Println("Copied elements =>", nn)
// }

//slice (slicing)
// package main

// import "fmt"

// func main() {

// 	var fruits1 = []string{"apple", "banana", "mango", "durian", "pineapple"}

// 	var fruits2 = fruits1[1:4]
// 	fmt.Printf("%#v\n", fruits2)

// 	var fruits3 = fruits1[0:]
// 	fmt.Printf("%#v\n", fruits3)

// 	var fruits4 = fruits1[:3]
// 	fmt.Printf("%#v\n", fruits4)

// 	var fruits5 = fruits1[:] // sama dengan fruits1[:len(fruits1)]
// 	fmt.Printf("%#v\n", fruits5)
// }

//slice (Combining slicing and append)
// package main

// import "fmt"

// func main() {

// 	var fruits1 = []string{"apple", "banana", "mango", "durian", "pineapple"}

// 	fruits1 = append(fruits1[:3], "rambutan")

// 	fmt.Printf("%#v\n", fruits1)

// }

//slice (Backing array #1)

// package main

// import "fmt"

// func main() {

// 	var fruits1 = []string{"apple", "mango", "durian", "banana", "starfruit"}

// 	var fruits2 = fruits1[2:4]

// 	fruits2[0] = "rambutan"

// 	fmt.Println("fruits1 => ", fruits1)
// 	fmt.Println("fruits2 => ", fruits2)

// }

//slice (Cap function)

// package main

// import (
// 	"fmt"
// 	"strings"
// )

// func main() {

// 	var fruits1 = []string{"apple", "mango", "durian", "banana"}

// 	fmt.Println("Fruits1 cap:", cap(fruits1)) //4
// 	fmt.Println("Fruits1 len:", len(fruits1)) //4

// 	fmt.Println(strings.Repeat("#", 20))

// 	var fruits2 = fruits1[0:3]

// 	fmt.Println("Fruits2 cap:", cap(fruits2)) //4
// 	fmt.Println("Fruits2 len:", len(fruits2)) //3

// 	fmt.Println(strings.Repeat("#", 20))

// 	var fruits3 = fruits1[1:]

// 	fmt.Println("Fruits3 cap:", cap(fruits3)) //3
// 	fmt.Println("Fruits3 len:", len(fruits3)) //3
// }

// package main

// import "fmt"

// func main() {
// 	cars := []string{"Ford", "Honda", "Audi", "Range Rover"}
// 	newCars := []string{}

// 	newCars = append(newCars, cars[0:2]...)

// 	cars[0] = "Nissan"
// 	fmt.Println("cars:", cars)
// 	fmt.Println("newCars:", newCars)
// }
