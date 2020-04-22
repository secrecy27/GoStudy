package main

func main() {
	total := sum(1, 3, 5, 7, 9)
	println(total)

	count, total2 := sum2(2, 4, 6, 8, 10)
	println(count, total2)

	count2, total3 := sum2_reformat(1, 2, 3, 4, 5)
	println(count2, total3)
}

//리턴 되는 함수의 타입을 지정해 줄 수 있음
func sum(num ...int) int {
	s := 0
	for _, n := range num {
		s += n
	}
	return s
}

//리턴 값을 여러개로 지정해줄 경우
func sum2(num ...int) (int, int) {
	s := 0
	count := 0
	for _, n := range num {
		s += n
		count += n
	}

	return count, s
}

//리턴 값을 여러개로 지정해줄 경우2
func sum2_reformat(num ...int) (count int, total int) {
	for _, n := range num {
		total += n
	}
	count = len(num)
	return
}
