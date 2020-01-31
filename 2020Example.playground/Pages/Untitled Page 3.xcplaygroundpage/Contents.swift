//: [Previous](@previous)

import Foundation

var timeArr:[String] = []

for i in 0..<24 {
  for j in 0...55 {
    if j % 5 == 0 { //5분 간격
      
      if i < 10 {
        if j == 0 || j == 5 {
          timeArr.append("0" + String(i) + ":" + "0" + String(j))
        } else {
          timeArr.append("0" + String(i) + ":" + String(j))
        }
        
      } else {
        if j == 0 || j == 5 {
            timeArr.append(String(i) + ":" + "0" + String(j))
        } else {
          timeArr.append(String(i) + ":" + String(j))
        }
      }
      
    }
  }
}
print(timeArr)

//: [Next](@next)
