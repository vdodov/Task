/*
[ 과제 ]
1. 다음과 같은 속성(Property)과 행위(Method)를 가지는 클래스 만들어보기.
구현 내용은 자유롭게
    
** 강아지 (Dog)
- 속성: 이름, 나이, 몸무게, 견종
- 행위: 짖기, 먹기

** 학생 (Student)
- 속성: 이름, 나이, 학교명, 학년
- 행위: 공부하기, 먹기, 잠자기

** 아이폰(IPhone)
- 속성: 기기명, 가격, faceID 기능 여부(Bool)
- 행위: 전화 걸기, 문자 전송

** 커피(Coffee)
- 속성: 이름, 가격, 원두 원산지



2. 계산기 클래스를 만들고 다음과 같은 기능을 가진 Property 와 Method 정의해보기

** 계산기 (Calculator)
- 속성: 현재 값
- 행위: 더하기, 빼기, 나누기, 곱하기, 값 초기화

ex)
let calculator = Calculator() // 객체생성

calculator.value  // 0

calculator.add(10)    // 10
calculator.add(5)     // 15

calculator.subtract(9)  // 6
calculator.subtract(10) // -4

calculator.multiply(4)   // -16
calculator.multiply(-10) // 160

calculator.divide(10)   // 16
calculator.reset()      // 0
*/

//1. 다음과 같은 속성(Property)과 행위(Method)를 가지는 클래스 만들어보기.
//** 강아지 (Dog)
//- 속성: 이름, 나이, 몸무게, 견종
//- 행위: 짖기, 먹기

class Dog {
    var name = "happy"
    var age = 3
    var weight = 10
    var dogBreed = "푸들"
    
    func bark() {
        print("멍멍")
    }
    
    func eat() {
        print("냠냠")
    }
}
let myDog = Dog()
myDog.name
myDog.age = 2
myDog.weight
myDog.bark()
myDog.eat()

//** 학생 (Student)
//- 속성: 이름, 나이, 학교명, 학년
//- 행위: 공부하기, 먹기, 잠자기

class Student {
    var name = "차수연"
    var age = 24
    var shool = "패캠"
    var grade = 1
    
    func study() {
        print("패캠에서 공부한다.")
    }
    func eat() {
        print("밥을 먹는다.")
    }
    func sleep() {
        print("잠을 잔다.")
    }
}

let myStudent = Student()
myStudent.age = 20
myStudent.name
myStudent.shool
myStudent.grade
myStudent.study()
myStudent.eat()
myStudent.sleep()

//** 아이폰(IPhone)
//- 속성: 기기명, 가격, faceID 기능 여부(Bool)
//- 행위: 전화 걸기, 문자 전송

class IPhone {
    var name = "아이폰Xs MAX"
    var price = 1500000
    var faceID = true
    
    func call() {
        print("전화 걸기")
    }
    func mail() {
        print("문자 전송")
    }
}
let myIPhone = IPhone()
myIPhone.name = "아이폰6s"
myIPhone.price
myIPhone.faceID = false
myIPhone.call()
myIPhone.mail()

//** 커피(Coffee)
//- 속성: 이름, 가격, 원두 원산지
class Coffee {
    var name = "아메리카노"
    var price = 3000
    var origin = "휴에테낭고"
    
    func drink() {
        print("\(name)를 마신다")
    }
}
let myCoffee = Coffee()
myCoffee.drink()


//2. 계산기 클래스를 만들고 다음과 같은 기능을 가진 Property 와 Method 정의해보기
    
//** 계산기 (Calculator)
// 속성: 현재 값
// 행위: 더하기, 빼기, 나누기, 곱하기, 값 초기화

class Calculator {
    
    var value: Double = 0
    
    func add(_ num: Double) -> Double {
        value += num
        return value
        
    }
    
    func subtract(_ num: Double) -> Double {
        value -= num
        return value
        
    }
    
    func multiply(_ num: Double) -> Double {
        value *= num
        return value
    }
    
    func divide(_ num: Double) -> Double {
        value /= num
        return value
    }
    
    func reset() {
        value = 0
    }
}

let calculator = Calculator() // 객체생성

calculator.value  // 0

calculator.add(10)    // 10
calculator.add(5)     // 15

calculator.subtract(9)  // 6
calculator.subtract(10) // -4

calculator.multiply(4)   // -16
calculator.multiply(-10) // 160

calculator.divide(10)   // 16
calculator.reset()      // 0
