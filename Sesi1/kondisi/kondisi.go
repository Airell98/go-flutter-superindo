// package main

// import "fmt"

// func main() {
// 	var currentYear = 2021

// 	if age := currentYear - 1998; age < 17 {
// 		fmt.Println("Kamu belum boleh membuat kartu sim")
// 	} else {
// 		fmt.Println("Kamu sudah boleh membuat kartu sim")
// 	}
// }

// seleksi-kondisi-if-elseif-else

// package main

// import "fmt"

// func main() {
// 	var score = 7

// 	if score == 10 {
// 		fmt.Println("You graduated with a prefect score")
// 	} else if score > 5 {
// 		fmt.Println("You graduated with a mediocre score")
// 	} else {
// 		fmt.Println("Study harder next time, you've failed to graduate")
// 	}
// }

// variabel-temporary-pada-if-else

// package main

// import "fmt"

// func main() {
// 	var point = 8840.0

// 	if percent := point / 100; percent >= 100 {
// 		fmt.Printf("%.1f%s perfect!\n", percent, "%")
// 	} else if percent >= 70 {
// 		fmt.Printf("%.1f%s good\n", percent, "%")
// 	} else {
// 		fmt.Printf("%.1f%s not bad\n", percent, "%")
// 	}
// }

// seleksi-kondisi-switch

// package main

// import "fmt"

// func main() {

// 	var score = 8

// 	switch score {
// 	case 8:
// 		fmt.Println("perfect")
// 	case 7:
// 		fmt.Println("awesome")
// 	default:
// 		fmt.Println("not bad")
// 	}
// }

// switch-satu-case-banyak-kondisi

// package main

// import "fmt"

// func main() {
// 	var point = 6

// 	switch point {
// 	case 8:
// 		fmt.Println("perfect")
// 	case 7, 6, 5, 4:
// 		fmt.Println("awesome")
// 	default:
// 		fmt.Println("not bad")
// 	}
// }

// kurung-kurawal-case-default

// package main

// import "fmt"

// func main() {
// 	var point = 6

// 	switch point {
// 	case 8:
// 		fmt.Println("perfect")
// 	case 7, 6, 5, 4:
// 		fmt.Println("awesome")
// 	default:
// 		{
// 			fmt.Println("not bad")
// 			fmt.Println("you can be better!")
// 		}
// 	}
// }

// switch-gaya-if-else

// package main

// import "fmt"

// func main() {
// 	var score = 6

// 	switch {
// 	case score == 8:
// 		fmt.Println("perfect")
// 	case (score < 8) && (score > 3):
// 		fmt.Println("not bad")
// 	default:
// 		{
// 			fmt.Println("study harder")
// 			fmt.Println("you need to learn more")
// 		}
// 	}
// }

// fallthrough

// package main

// import "fmt"

// func main() {
// 	var score = 6

// 	switch {
// 	case score == 8:
// 		fmt.Println("perfect")
// 	case (score < 8) && (score > 3):
// 		fmt.Println("not bad")
// 		fallthrough
// 	case score < 5:
// 		fmt.Println("It is ok, but please study harder")
// 	default:
// 		{
// 			fmt.Println("study harder")
// 			fmt.Println("You don't have a good score yet")
// 		}
// 	}
// }

// seleksi-kondisi-bersarang

package main

import "fmt"

func main() {
	var score = 10

	if score > 7 {
		switch score {
		case 10:
			fmt.Println("perfect!")
		default:
			fmt.Println("nice!")
		}
	} else {
		if score == 5 {
			fmt.Println("not bad")
		} else if score == 3 {
			fmt.Println("keep trying")
		} else {
			fmt.Println("you can do it")
			if score == 0 {
				fmt.Println("try harder!")
			}
		}
	}
}
