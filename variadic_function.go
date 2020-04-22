package main

func main() {
	test("A", "B", "C")
}

//가변인자함수
func test(msg ...string) {
	for i, s := range msg {
		println(i, s)
	}
}
