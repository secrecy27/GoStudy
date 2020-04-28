package main

import (
	"fmt"
	"reflect"
)

func main() {
	var name int
	fmt.Print("이름:")
	fmt.Scanln(&name)
	fmt.Println("type check", reflect.TypeOf(name))

	//if  reflect.TypeOf(name) == reflect.String {
	//	fmt.Print("string")
	//}else{
	//	fmt.Print("etc")
	//}
	fmt.Println(name)
	//var num int
	//fmt.Println("번호:")
	//fmt.Scanln(&num)
	//var addr string
	//fmt.Print("주소:")
	//fmt.Println("이름은 ", name, " 번호는 ", num)
	//fmt.Println("주소는 ", addr)
}

//type Test struct {
//	foo int
//}
//
//func isTest(t interface{}) bool {
//	switch t.(type) {
//	case uint:
//		return true
//	default:
//		return false
//	}
//}
//
//func main() {
//	var name int
//	fmt.Scanln(&name)
//	t := Test{name}
//	fmt.Println("----------------------------------------------")
//	fmt.Println(reflect.TypeOf(t) == reflect.TypeOf((*Test)(nil)).Elem())
//	//fmt.Println(isTest(t))
//}
