//: [Previous](@previous)

import Foundation

let array = [nil, nil, "Apples", "Peaches", "Plums"]

for index in 0..<array.count {
  let value = array[index]
  if value == nil {
    continue
  } else {
    let resultValue = array[index] ?? ""
    print(index, resultValue)
  }
}


if let index = array.firstIndex(of: "Peaches") {
    print("Found peaches at index \(index)")
}

//: [Next](@next)
