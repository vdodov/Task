//자판기
class Beverage {
    let name: String
    let manufacture: String
    var price: Int
    
    init(name: String, manufacture: String, price: Int) {
        self.name = name
        self.manufacture = manufacture
        self.price = price
    }
}

class VendingMachine {
    var money: Int = 0
    
    func insert(_ money:Int) { //입금
        self.money += money
        print("\(money)가 입금되었습니다.")
    }
    
    func change() { //반환
        print("\(money)가 반환되었습니다.")
        money = 0
    }
    
    func check() {
        print("\(money)가 남아있습니다.")
    }
    
    func purchase(name: String) {
        let beverage = Beverage(name: name, manufacture: "동아오츠카", price: 1500)
        guard beverage.price <= self.money else { print("잔돈이 부족합니다."); return }
        
        print("\(beverage.price)짜리 \(beverage.manufacture)에서 만든 \(beverage.name)음료가 나왔습니다.")
        self.money -= beverage.price
    }
}

let machine = VendingMachine()
machine.insert(2000)
machine.check()
machine.purchase(name: "포카리스웨이트")
machine.change()
