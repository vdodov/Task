//: [Previous](@previous)

import Foundation

//let today = Date()
//let longDateFormatter = DateFormatter()
//longDateFormatter.dateFormat = "yyyy.mm.dd"
//var longDateString = longDateFormatter.string(from: today)
//print(longDateString)
//
//let shortDateFormatter = DateFormatter()
//shortDateFormatter.dateFormat = "mm.dd"
//var shortDateString = shortDateFormatter.string(from: today)
//print(shortDateString)


let today = Date()
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyymmdd"
var todayDateString = dateFormatter.string(from: today)
print(todayDateString)

//: [Next](@next)
