// 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수 2
func sayHello(name: String, age:Int) {
    print(name, age)
}
sayHello(name: "ChaSuYeon", age: 24)


//정수를 하나 입력받아 2의 배수 여부를 반환하는 함수 2
func evenNumber(number: Int) -> String {
    if (number % 2 == 0) {
        return "true"
    }else {
         return "false"
    }
}
evenNumber(number: 7)

//정수를 두 개 입력 받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10) 2
let a: Int = 10
func mulitple(num1:Int, num2:Int) -> Int {
    return (a*num1*num2)
}
mulitple(num1:4, num2:2)

//4과목의 시험 점수를 입력받아 평균 점수를 반환하는 함수 2
func average(num1:Int, num2:Int, num3:Int, num4:Int) -> Int {
    return ((num1+num2+num3+num4)/4)
}
average(num1: 80, num2: 90, num3: 100, num4: 70)

//점수(문자 또는 숫자)를 입력받아 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F) 2
func credit(num:Int) -> String {
    if (num >= 90) {
        return "A"
    }else if (num >= 80) {
        return "B"
    }else if (num >= 70) {
        return "C"
    }else {
        return "F"
    }
}
credit(num:100)

//점수(문자 또는 숫자)를 여러 개 입력받아 평균 점수에 대한 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F) 3
func credit2(num1:Int, num2:Int, num3:Int) -> String {
    let avg: Int = ((num1 + num2 + num3)/3)
    
    if (avg >= 90) {
        return "A"
    }else if (avg >= 80) {
        return "B"
    }else if (avg >= 70) {
        return "C"
    }else {
        return "F"
    }
    
}

credit2(num1: 90, num2: 70, num3: 85)
