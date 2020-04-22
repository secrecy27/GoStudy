package main

func main() {
	msg := "Init"
	//변수의 주소를 전달
	say2(&msg)
	println("after data : ", msg) //변경된 메시지 출력
}

//*string : 포인터임을 표시
func say2(msg *string) {
	println("before data : ", msg)
	println("address data : ", *msg)
	*msg = "Changed"	//Dereferencing : 주소에 데이터를 쓰는 것
}
