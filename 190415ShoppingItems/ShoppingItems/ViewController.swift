import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!

    let images = ["iPhone8", "iPhoneSE_Gold", "iPhoneSE_RoseGold", "iPhoneX_SpaceGray", "iPhoneX_White"]
    var models:[String] = [] //상품명
    var salePhones: [Int] = [] //상품 구매 개수
    var stockMax: [Int] = [] //상품재고
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for num in 1...15 {
            models.append("i\(num) Phone") //상품명
            stockMax.append(.random(in: 3...5)) //상품재고
            salePhones.append(0)// 상품 구매 개수
        }
        
        tableView.frame = view.frame
        tableView.register(ItemCell.self, forCellReuseIdentifier: "Custom")
        tableView.rowHeight = 70
        tableView.dataSource = self
        view.addSubview(tableView)
    }
    
    func alert() {
        let alert = UIAlertController(title: "알림", message: "상품 마감", preferredStyle: .alert)
        let ok = UIAlertAction(title: "확인", style: .default)
        
        alert.addAction(ok)
        
        present(alert, animated: true)
        
    }
}
// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return salePhones.count //15개
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // cell 을 재사용하여 생성 재사용 셀들은 커스텀 셀 뿐임으로 as! ItemCell 사용
        let cell = tableView.dequeueReusableCell(withIdentifier: "Custom", for: indexPath) as! ItemCell
        
        // 커스텀 셀 클래스의 setting 함수를 호출하여 셋팅
        cell.setCell(images[indexPath.row % 5], models[indexPath.row], counting: "\(salePhones[indexPath.row])", stockMax: stockMax[indexPath.row])
        cell.delegate = self //버튼이 몇번째 셀?
        
        return cell
    }
}

extension ViewController: PhoneSellerDelegate {
    func salesPhone(_ cell: ItemCell) {
        if let indexPath = tableView.indexPath(for: cell) {
            
            print(salePhones[indexPath.row], cell.stockMax)
            // 재고량이 판매량보다 크면 -> 증가 시키지 못하고
            // 배경색을 red로 바꾼뒤 1초동안 animation으로 white 변화
            // 그리고 alert
            guard cell.stockMax > salePhones[indexPath.row] else {
                cell.backgroundColor = .red
                UIView.animate(withDuration: 1) {
                    cell.backgroundColor = .white
                }
                self.alert()
                return
            }
            
            // 1씩 증가 후 label에 texting
            salePhones[indexPath.row] += 1
            print(salePhones[indexPath.row], cell.stockMax)
            cell.saleCountLabel.text = "\(salePhones[indexPath.row])"
        }
    }
}
