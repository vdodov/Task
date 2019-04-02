//task1 이라는 변수가 있을 때
//task1 + task1 의 결과가 제대로 출력되도록 할 것
func addTwoValues(a: Int, b: Int) -> Int {
    return a + b
}
let task1: Any = addTwoValues(a: 2, b: 3)

if let result = (task1 as? Int) {
    result + result
}
