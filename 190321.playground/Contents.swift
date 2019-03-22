/*
1. 첨부된 이미지를 보고 상속을 이용해 구현해보기

2. 첨부된 각 도형의 이미지를 참고하여 각 도형별 클래스를 만들고
각각의 넓이, 둘레, 부피를 구하는 프로퍼티와 메서드 구현하기
(클래스 구현 연습)
 */

//첨부된 이미지를 보고 상속을 이용해 구현해보기
class Animal {
    let brain = true
    var legs = 0
    
    init(legs: Int){
        self.legs = legs
    }
}
class Human: Animal {
    override var legs: Int {
        get {
            return super.legs
        }
        set {
            super.legs = newValue
        }
    }
}
class Pet: Animal {
    override var legs: Int {
        get {
            return super.legs
        }
        set {
            super.legs = newValue
        }
    }
    var fleas = 0
    
    init(fleas: Int) {
        super.init(legs: 4)
        self.fleas = fleas
    }
}
class Dog: Pet {
    override var fleas: Int {
        get {
            return super.fleas
        }
        set {
            super.fleas = newValue
        }
    }
}
class Cat: Pet {
    override var fleas: Int {
        get {
            return super.fleas
        }
        set {
            super.fleas = newValue
        }
    }
}
let myAnimal = Animal(legs: 4)
myAnimal.brain
myAnimal.legs

let myHuman = Human(legs: 2)
myHuman.legs

let myPet = Pet(fleas: 0)
myPet.legs


let myDog = Dog(fleas: 8)
myDog.fleas

let myCat = Cat(fleas: 4)
myCat.fleas


// 첨부된 각 도형의 이미지를 참고하여 각 도형별 클래스를 만들고
//각각의 넓이, 둘레, 부피를 구하는 프로퍼티와 메서드 구현하기
//(클래스 구현 연습)
print("---Squar---")
class Squar {
    let s: Int
    
    init(s:Int){
        self.s = s
    }
    
    func printArea() {
        print("넓이는 \(s*s)")
    }
    
    func printPerimeter() {
        print("둘레는 \(4*s)")
    }
}

let mySquar = Squar(s: 4)
mySquar.printArea()
mySquar.printPerimeter()

print("---Rectangle---")
class Rectangle {
    let l: Int
    let w: Int
    
    init(l:Int, w:Int){
        self.l = l
        self.w = w
    }
    
    func printArea() {
        print("넓이는 \(l*w)")
    }
    
    func printPerimeter() {
        print("둘레는 \((2*l) + (2*w))")
    }
    
}

let myRectangle = Rectangle(l: 4, w: 2)
myRectangle.printArea()
myRectangle.printPerimeter()



print("---Circle---")
class Circle {
    let pie = 3.14
    let r: Double
    
    init(r:Double){
        self.r = r
    }
    
    func printArea() {
        print("넓이는 \(pie*r*r)")
    }
    
    func printCircumference() {
        print("둘레는 \(2*pie*r)")
    }
    
}

let myCircle = Circle(r: 3)
myCircle.printArea()
myCircle.printCircumference()



print("---Triangle---")
class Triangle {
    let b: Double
    let h: Double
    
    init(b:Double, h:Double){
        self.b = b
        self.h = h
    }
    
    func printArea() {
        print("넓이는 \(0.5*b*h)")
    }
    

}

let myTriangle = Triangle(b: 3, h: 4)
myTriangle.printArea()

print("---Trapezoid---")
class Trapezoid {
    let h: Double
    let a: Double
    let b: Double
    
    init(h:Double, a:Double, b:Double) {
        self.h = h
        self.a = a
        self.b = b
    }
    func printArea() {
        print("넓이는 \(0.5*h*(a+b))")
    }
}

let myTrapezoid = Trapezoid(h: 3, a: 4, b: 3)
myTrapezoid.printArea()


print("---Cube---")
class Cube {
    let s: Int

    init(s:Int) {
        self.s = s
    }
    func printVolum() {
        print("부피는 \(s*s*s)")
    }
}

let myCube = Cube(s: 3)
myCube.printVolum()


print("---Rectangular Solid---")
class RectangularSolid {
    let w: Double
    let l: Double
    let h: Double
    
    init(w:Double, l:Double, h:Double) {
        self.w = w
        self.l = l
        self.h = h
    }
    func printArea() {
        print("부피는 \(w*l*h)")
    }
}

let myRectangularSolid = RectangularSolid(w: 3, l: 2, h: 3)
myRectangularSolid.printArea()


print("---CircularCylinder---")
class CircularCylinder {
    let pie = 3.14
    let r: Double
    let h: Double
    
    init(r:Double, h:Double) {
        self.r = r
        self.h = h
    }
    
    func printVolum() {
        print("부피는 \(pie*r*r*h)")
    }
}

let myCircularCylinder = CircularCylinder(r: 3, h: 5)
myCircularCylinder.printVolum()


print("---Sphere---")
class Sphere {
    let pie = 3.14
    let r: Double
    
    init(r:Double) {
        self.r = r
    }
    
    func printVolum() {
        print("부피는 \(1.33*pie*r*r*r)")
    }
}

let mySphere = Sphere(r: 3)
mySphere.printVolum()


print("---Cone---")
class Cone {
    let pie = 3.14
    let r: Double
    let h: Double
    
    init(r:Double, h:Double) {
        self.r = r
        self.h = h
    }
    
    func printVolum() {
        print("부피는 \(0.33*pie*r*r*h)")
    }
}

let myCone = Cone(r: 4, h: 2)
myCone.printVolum()









