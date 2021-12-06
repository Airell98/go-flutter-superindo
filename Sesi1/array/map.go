//map (#1)
// package main

// import "fmt"

// func main() {

// 	var person map[string]string // Deklarasi

// 	person = map[string]string{} // Inisialisasi

// 	person["name"] = "Airell"

// 	person["age"] = "23"

// 	person["address"] = "Jalan Sudirman"

// 	fmt.Println("name:", person["name"])
// 	fmt.Println("age:", person["age"])
// 	fmt.Println("address:", person["address"])
// }

//map (#2)
// package main

// import "fmt"

// func main() {

// 	var person = map[string]string{
// 		"name":    "Airell",
// 		"age":     "23",
// 		"address": "Jalan Sudirman",
// 	}

// 	fmt.Println("name:", person["name"])
// 	fmt.Println("age:", person["age"])
// 	fmt.Println("address:", person["address"])
// }

//map (Loop through map)
// package main

// import "fmt"

// func main() {

// 	var person = map[string]string{
// 		"name":    "Airell",
// 		"age":     "23",
// 		"address": "Jalan Sudirman",
// 	}

// 	for key, value := range person {
// 		fmt.Println(key, ":", value)
// 	}
// }

//map (deleting value)
// package main

// import "fmt"

// func main() {

// 	var person = map[string]string{
// 		"name":    "Airell",
// 		"age":     "23",
// 		"address": "Jalan Sudirman",
// 	}

// 	fmt.Println("Before deleting:", person)

// 	delete(person, "age")

// 	fmt.Println("After deleting:", person)
// }

//map (Detecting a value)
// package main

// import "fmt"

// func main() {

// 	var person = map[string]string{
// 		"name":    "Airell",
// 		"age":     "23",
// 		"address": "Jalan Sudirman",
// 	}

// 	value, exist := person["age"]

// 	if exist {
// 		fmt.Println(value)
// 	} else {
// 		fmt.Println("Value does'nt exist")
// 	}

// 	delete(person, "age")

// 	value, exist = person["age"]

// 	if exist {
// 		fmt.Println(value)
// 	} else {
// 		fmt.Println("Value has been deleted", value)
// 	}

// }

//map (Combining slice with map)
package main

import "fmt"

func main() {

	var people = []map[string]string{
		{"name": "Airell", "age": "23"},
		{"name": "Nanda", "age": "23"},
		{"name": "Mailo", "age": "15"},
	}

	for i, person := range people {
		fmt.Printf("Index: %d, name: %s, age: %s\n", i, person["name"], person["age"])
	}

}
