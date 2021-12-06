//Initializing Struct

// package main

// import "fmt"

// type Employee struct {
// 	name     string
// 	age      int
// 	division string
// }

// func main() {
// 	var employee1 = Employee{}
// 	employee1.name = "Airell"
// 	employee1.age = 23
// 	employee1.division = "Curriculum Developer"

// 	var employee2 = Employee{name: "Ananda", age: 23, division: "Finance"}

// 	fmt.Printf("Employee1: %+v\n", employee1)
// 	fmt.Printf("Employee2: %+v\n", employee2)
// }

//Struct (Embedded struct)

// package main

// import "fmt"

// type Person struct {
// 	name string
// 	age  int
// }

// type Employee struct {
// 	division string
// 	person   Person
// }

// func main() {
// 	var employee1 Employee

// 	employee1.person.name = "Airell"
// 	employee1.person.age = 23
// 	employee1.division = "Curriculum Developer"

// 	fmt.Printf("%+v", employee1)
// }

//Struct (Embedded struct)

// package main

// import "fmt"

// type Person struct {
// 	name string
// 	age  int
// }

// func main() {
// 	//Anonymous struct tanpa pengisian field
// 	var employee1 = struct {
// 		person   Person
// 		division string
// 	}{}
// 	employee1.person = Person{name: "Airell", age: 23}
// 	employee1.division = "Curriculum developer"

// 	//Anonymous struct dengan pengisian field
// 	var employee2 = struct {
// 		person   Person
// 		division string
// 	}{
// 		person:   Person{name: "Ananda", age: 23},
// 		division: "Finance",
// 	}

// 	fmt.Printf("Employee1: %+v\n", employee1)
// 	fmt.Printf("Employee1: %+v\n", employee2)

// }

//Struct (Slice of struct)
// package main

// import "fmt"

// type Person struct {
// 	name string
// 	age  int
// }

// func main() {

// 	var people = []Person{
// 		{name: "Airell", age: 23},
// 		{name: "Ananda", age: 23},
// 		{name: "Mailo", age: 23},
// 	}

// 	for _, v := range people {
// 		fmt.Printf("%+v\n", v)
// 	}

// }

//Struct (Anonymous struct of slice)
package main

import "fmt"

type Person struct {
	name string
	age  int
}

func main() {

	var employee = []struct {
		person   Person
		division string
	}{
		{person: Person{name: "Airell", age: 23}, division: "Curriculum Developer"},
		{person: Person{name: "Ananda", age: 23}, division: "Finance"},
		{person: Person{name: "Mailo", age: 21}, division: "Marketing"},
	}

	for _, v := range employee {
		fmt.Printf("%+v\n", v)
	}

}
