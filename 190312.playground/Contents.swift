//두 개의 자연수를 입력받아 두 수를 하나의 숫자로 이어서 합친 결과를 정수로 반환하는 함수
//(1과 5 입력 시 15,  29와 30 입력 시 2930,  6과 100 입력 시 6100)
func isEqual (num1: Int, num2: Int) -> String {
    return "\(num1)\(num2)"
}
isEqual(num1: 1, num2: 5)
isEqual(num1: 29, num2: 30)
isEqual(num1: 6, num2: 100)


//문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수
func isEqual (str1:String, str2:String) -> Bool {
    return str1 == str2
}

isEqual(str1: "cha", str2: "cha")
isEqual(str1: "ios", str2: "swift")

//자연수를 입력받아 그 수의 약수를 모두 출력하는 함수
func printDivisor (num: Int) {
    print("\(num)의 약수: ", terminator:" ")
    for i in 1...num {
        if num % i == 0 {
            print(i, terminator:" ")
        }
    }
    print()
}
printDivisor(num: 10)
printDivisor(num: 12)
printDivisor(num: 15)

//2 이상의 자연수를 입력받아, 소수인지 아닌지 판별하는 함수
func isPrimeNumber (num:Int) -> Bool {
    guard num > 1 else { return false }
    guard num != 2 else { return true }
    
    for i in 2..<num {
        if num % i == 0 {
        return false
        }
    }
    return true
    
}
isPrimeNumber(num: 2)
isPrimeNumber(num: 5)
isPrimeNumber(num: 7)


isPrimeNumber(num: 4)
isPrimeNumber(num: 6)
isPrimeNumber(num: 10)

// 자연수 하나를 입력받아 피보나치 수열 중에서 입력받은 수에 해당하는 자리의 숫자를 반환하는 함수
// +참고로 피보나치 수열은 이전 두 수의 합이 다음 수가 되는 수열
// e.g.  0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89 ....
// 함수 호출 시 입력받은 숫자가 4인 경우 피보나치 수열의 4번째 위치인 2 출력
func fibonacciNumber(at index:Int) -> Int {
    var op1 = 0, op2 = 1
    
    for i in 0..<index {
        if i % 2 == 0 {
            op1 += op2
        }else {
            op2 += op1
        }
    }
    return index % 2 == 0 ? op1 : op2
}

fibonacciNumber(at: 0)
fibonacciNumber(at: 1)
fibonacciNumber(at: 2)
fibonacciNumber(at: 3)
fibonacciNumber(at: 4)

//100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수

func commonMultiple () {
    for num in 1...100 {
        if (num % 3 == 0) && (num % 5 == 0) {
            print(num)
        }
    }
}
