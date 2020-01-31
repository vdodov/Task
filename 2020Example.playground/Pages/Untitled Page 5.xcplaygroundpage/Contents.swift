//: [Previous](@previous)

import Foundation

var str = "555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
var arr: [Int: [Character]] = [:]


for index in 0..<str.count {
  let strIndex = str.index(str.startIndex, offsetBy: index)
  let splitedStr = str[strIndex]
  print(splitedStr)
}





var dic: [Int: String] = [3: "00"]

let babyIndexCount = 5

for _ in 0..<babyIndexCount {
  for tuple in dic {
    print(tuple.key, tuple.value)
  }
}



for i in 0..<10 {
  dic.updateValue("a\(i + 1)", forKey: i)
}

print(dic)


//: [Next](@next)
