// package main

// import (
// 	"fmt"
// 	"reflect"
// )

// func main() {
// 	var number = 23
// 	var reflectValue = reflect.ValueOf(number)

// 	fmt.Println("tipe  variabel :", reflectValue.Type())

// 	if reflectValue.Kind() == reflect.Int {
// 		fmt.Println("nilai variabel :", reflectValue.Int())
// 	}
// }

package main

import (
	"fmt"
	"reflect"
)

type Person struct {
	Name string
	Age  int
}

func main() {
	person := Person{"Joey", 20}

	var sampleType = reflect.TypeOf(person)

	var valueType = reflect.ValueOf(person)

	fmt.Println(sampleType.NumField())
	fmt.Println(sampleType.Field(0).Name)
	fmt.Println(sampleType)
	fmt.Println(valueType.Field(0).Interface())
}
