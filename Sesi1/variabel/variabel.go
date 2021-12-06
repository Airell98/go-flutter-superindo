// 1.deklarasi-variabel-dengan-tipe-data

// package main

// import "fmt"

// func main() {
// 	var name string = "Airell"
// 	var age int = 23

// 	fmt.Println("Ini adalah namanya ==>", name)
// 	fmt.Println("Ini adalah umurnya nya ==>", age)
// }

// 2. re-assign variable dengan tipe data

// package main

// import "fmt"

// func main() {
// 	var name string
// 	var age int = 23

// 	name = "Airell"
// 	age = 25

// 	fmt.Println("Ini adalah namanya ==>", name)
// 	fmt.Println("Ini adalah umurnya nya ==>", age)
// }

//3. re-assign variable dengan tipe data yang tidak sama

// package main

// import "fmt"

// func main() {
// 	var name string
// 	var age int = 23

// 	name = 30
// 	age = "Airell"

// 	fmt.Println("Ini adalah namanya ==>", name)
// 	fmt.Println("Ini adalah umurnya nya ==>", age)
// }

//4. Variable without data type

// package main

// import "fmt"

// func main() {
// 	var name = "Airell"
// 	var age = 23

// 	fmt.Printf("%T, %T", name, age)
// }

//5. Variable without data  (Short declaration)

// package main

// import "fmt"

// func main() {
// 	name := "Airell"
// 	age := 23

// 	fmt.Printf("%T, %T", name, age)
// }

//6. deklarasi-multi-variabel

// package main

// import "fmt"

// func main() {

// 	var student1, student2, student3 string = "satu", "dua", "tiga"

// 	var first, second, third int

// 	first, second, third = 1, 2, 3

// 	fmt.Println(student1, student2, student3)

// 	fmt.Println(first, second, third)

// }

//7. deklarasi-muti-variable-dengan-type-inference

// package main

// import "fmt"

// func main() {

// 	var name, age, address = "Airell", 23, "Jalan sudirman"

// 	first, second, third := "1", 2, "3"

// 	fmt.Println(name, age, address)

// 	fmt.Println(first, second, third)

// }

//8. variable-underscore

// package main

// import "fmt"

// func main() {

// 	var firstVariable string

// 	var name, age, address = "Airell", 23.5, "Jalan sudirman"

// 	_, _, _, _ = firstVariable, name, age, address

// 	fmt.Printf("%v", age)

// }

//9. fmt.PrintF Usage
// first, second := 1, "2"

package main

import "fmt"

func main() {

	var nama = "Airell"

	var age = 23

	var address = "Jalan sudirman"

	fmt.Printf("Halo nama ku %s, umuru aku adalah %d, dan aku tinggal di %s", nama, age, address)

}
