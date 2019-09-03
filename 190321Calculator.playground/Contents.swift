import Foundation

class Calculator {
  
  var accumulator: Int = 0
  
  func add(num: Int) -> Int {
    accumulator = accumulator + num
    return accumulator
  }
  
  func subtract(num: Int) -> Int {
    accumulator = accumulator - num
    return accumulator
  }
  
  func reset() {
    accumulator = 0
  }
}

let calculator = Calculator()
calculator.add(num: 10)
calculator.add(num: 5)
calculator.subtract(num: 20)
calculator.reset()
calculator.add(num: 1)
