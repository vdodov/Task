//: [Previous](@previous)

import Foundation

//let truncated = "AF9EDA926C9E"
//
//var firstIndex = truncated.index(truncated.startIndex, offsetBy: 0)
//var lastIndex = truncated.index(truncated.startIndex, offsetBy: 2)
//let m = String(truncated[firstIndex..<lastIndex].reversed())
//print(m)
//
//firstIndex = truncated.index(truncated.startIndex, offsetBy: 2)
//lastIndex = truncated.index(truncated.startIndex, offsetBy: 4)
//let m2 = String(truncated[firstIndex..<lastIndex].reversed())
//print(m2)
//
//firstIndex = truncated.index(truncated.startIndex, offsetBy: 4)
//lastIndex = truncated.index(truncated.startIndex, offsetBy: 6)
//let m3 = String(truncated[firstIndex..<lastIndex].reversed())
//print(m3)
//
//firstIndex = truncated.index(truncated.startIndex, offsetBy: 6)
//lastIndex = truncated.index(truncated.startIndex, offsetBy: 8)
//let m4 = String(truncated[firstIndex..<lastIndex].reversed())
//print(m4)
//
//firstIndex = truncated.index(truncated.startIndex, offsetBy: 8)
//lastIndex = truncated.index(truncated.startIndex, offsetBy: 10)
//let m5 = String(truncated[firstIndex..<lastIndex].reversed())
//print(m5)
//
//firstIndex = truncated.index(truncated.startIndex, offsetBy: 10)
//lastIndex = truncated.index(truncated.startIndex, offsetBy: 12)
//let m6 = String(truncated[firstIndex..<lastIndex].reversed())
//print(m6)
//
//
//print(m+m2+m3+m4+m5+m6)
//

//String to Double
//let myString = "310"
//let myFloat = (myString as NSString).doubleValue
//print(myFloat/10)

let nsString: NSString = "337:17:0:400"
let newString = nsString as String //NSString to String
let arr = newString.split(separator: ":").map { $0 }
print(arr)

var result:[String] = []
//싱글톤으로 저장해서 collectionView로 띄어줌 값이 바뀌면 reloadData
//온도
let temp = (arr[0] as NSString).doubleValue

result.append(String(temp/10))
print(temp/10)

//습도
result.append(String(arr[1]))
print(arr[1])

//유해물질
result.append(String(arr[2]))
print(arr[2])

//CO2
result.append(String(arr[3]))
print(arr[3])


print(result)



//: [Next](@next)
