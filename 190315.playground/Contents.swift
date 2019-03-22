//4. 아래 두 클로저를 Syntax Optimization을 이용하여 최대한 줄여보기

//let someClosure: (String, String) -> Bool = { (s1: String, s2: String) -> Bool in
//    let isAscending: Bool
//    if s1 > s2 {
//        isAscending = true
//    } else {
//        isAscending = false
//    }
//    return isAscending
//}
//someClosure("12","23")


let someClosure1: (String, String) -> Bool = { $0 > $1 }
someClosure1("12","23")
someClosure1("10","10")
someClosure1("100","10")


/*
let otherClosure: ([Int]) -> Int = { (values: [Int]) -> Int in
    var count: Int = 0
    for _ in values {
        count += 1
    }
    return count
}
 */

let otherClosure1:([Int]) -> Int = { $0.count }
otherClosure1([1,3,4,5,1])

//난이도 하

//5. 옵셔널 타입의 문자열 파라미터 3개를 입력받은 뒤, 옵셔널을 추출하여 Unwrapped 된 하나의 문자열로 합쳐서 반환하는 함수

func combineString(str1: String?, str2: String?, str3: String?) -> String {
    // code
    return (str1 ?? "") + (str2 ?? "") + (str3 ?? "")
}
combineString(str1: "AB", str2: "CD", str3: "EF")
combineString(str1: "AB", str2: nil, str3: "EF")

//// 입력 예시 및 결과
//// combineString1(str1: "AB", str2: "CD", str3: "EF") -> "ABCDEF"
//// combineString1(str1: "AB", str2: nil, str3: "EF") -> "ABEF"


//난이도 중하
