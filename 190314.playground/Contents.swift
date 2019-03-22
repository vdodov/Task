//자연수를 입력받아 원래 숫자를 반대 순서로 뒤집은 숫자를 반환하는 함수
//ex) 123 -> 321 , 10293 -> 39201

func reverseNum(num: Int) -> Int {
    let a = String(String(num).reversed())
    return Int(a)!
}
reverseNum(num: 1234567)

//주어진 문자 배열에서 중복되지 않는 문자만을 뽑아내 배열로 반환해주는 함수
//ex) ["a", "b", "c", "a", "e", "d", "c"]  ->  ["b", "e" ,"d"]
func printUniqueValues(from arr: [String]) -> [String] {
    var recordArr: [String] = [] //중복이 이미 발생한 배열 저장용
    var result: [String] = [] //중복되지 않은 문자 저장용
    
    for str in arr {
        // 인풋 : ["a", "b", "c", "a", "e", "d", "c"]
        // [].contains("a") -> true
        if !result.contains(str) && !recordArr.contains(str) {
            result.append(str)
        } else if let index = result.firstIndex(of: str) {
            result.remove(at: index)
            recordArr.append(str)
        } else {
            print("둘 다 해당되지 않음")
        }
    }
    return result
}

let strArr = ["a", "b", "c", "a", "e", "d", "c"]
print(printUniqueValues(from: strArr))

//var set = Set(aphabetArry) // -> arry를 set으로 변환
//var arr1 = Array(set) -> set을 arry로 변환
var AphabetArr = ["a", "b", "c", "a", "e", "d", "c"]

func checkArr(array: [String]) -> [String] {
    var newArr = array
    var resultArr: [String] = []
    
    for i in 0...newArr.count - 1 {
        var count = 0
        for j in 0...newArr.count - 1 {
            if i == j { continue }
            
            if newArr[i] == newArr[j] {
                count += 1
            }
        }
        if count == 0 {
            resultArr.append(newArr[i])
        }
    }
    
    return resultArr
}

checkArr(array: AphabetArr)


//임의의 정수 배열을 입력받았을 때 홀수는 배열의 앞부분, 짝수는 배열의 뒷부분에 위치하도록 구성된 새로운 배열을 반환하는 함수
//ex) [2, 8, 7, 1, 4, 3] -> [7, 1, 3, 2, 8, 4]

let arry = [2, 8, 7, 1, 4, 3]

var newArry:[Int] = []

for i in arry {
    if i % 2 != 0 {
        newArry.insert(i, at: 0)
    }else {
        newArry.append(i)
    }
}
newArry

//2개의 자연수와 사칙연산(+, -, *, /)을 가진 enum 타입 Arithmetic 을 입력 파라미터로 받아 해당 연산의 결과를 반환하는 함수 구현
enum Arithmetic {
    case addition, subtraction, multiplication, division
}

func calculator(operand1: Int, operand2: Int, op: Arithmetic) -> Int {
    // 코드
    switch op {
    case .addition:
        return operand1 + operand2
    case .subtraction:
        return operand1 - operand2
    case .multiplication:
        return operand1 * operand2
    case .division:
        return operand1 / operand2
    }
}

calculator(operand1: 10, operand2: 10, op: Arithmetic.addition)
calculator(operand1: 10, operand2: 10, op: Arithmetic.subtraction)
calculator(operand1: 10, operand2: 10, op: Arithmetic.multiplication)
calculator(operand1: 10, operand2: 10, op: Arithmetic.division)

//별도로 전달한 식육목 모식도 라는 자료를 보고 Dictionary 자료형에 맞도록 중첩형태로 데이터를 저장하고
// + 해당 변수에서 표범 하위 분류를 찾아 사자와 호랑이를 출력하기
let carnivora = [
    "식육목":[
        "개과":[
            "개":[
                "자칼","늑대","북미산 이리"],
            "여우":[
                "아메리카 여우","유럽 여우"]],
        "고양이과":[
            "고양이":[
                "고양이","살쾡이"],
            "표범":[
                "사자","호랑이"]]
    ]
]

if let 식육목 = carnivora["식육목"],
    let 고양이과 = 식육목["고양이과"],
    let 표범 = 고양이과["표범"]{
    print(표범[0],표범[1])
}
