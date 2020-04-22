package main

func main() {
	msg := "Init"
	//값이 복사되어 전달됨
	say(msg)
}

func say(msg string) {
	println(msg)
}
