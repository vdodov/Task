//
//  SecondViewController.swift
//  AlertController_storybord
//
//  Created by 차수연 on 25/03/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit




class SecondViewController: UIViewController {
    
    var num2 = 0
    
    let button = UIButton(type: .system)
    let numberLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        button.frame = CGRect(x: 100, y: 200, width:200, height: 200)
        button.setTitle("숫자 증가시키기2", for: .normal)
        button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        view.addSubview(button)
        
        
        numberLabel.frame = CGRect(x: 200, y: 400, width: 200, height: 200)
        numberLabel.text = "0"
        view.addSubview(numberLabel)

        
    }
    
    @objc func didTapButton(_ sender: Any) {
        let alertController = UIAlertController(title: "숫자증가", message: "+1 하시겠습니까?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Add count", style: .default) { _ in
            
            self.num2 += 1
            self.numberLabel.text = String(self.num2)
            
            print("+1 현재값: \(self.num2)")
            
        }
        let resetAction = UIAlertAction(title: "Reset", style: .destructive) { _ in
            print("초기화")
            
            self.num2 = 0
            self.numberLabel.text = String(self.num2)
            
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        alertController.addAction(resetAction)
        
        
        present(alertController, animated: true)
    }
    
}
