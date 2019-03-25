//
//  ViewController.swift
//  AlertController
//
//  Created by 차수연 on 25/03/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    var num = 0
    
    @IBOutlet weak var numberLable: UILabel!
    
    @IBAction func didTapButton(_ sender: Any) {
        let alertController = UIAlertController(title: "숫자증가", message: "+1 하시겠습니까?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Add count", style: .default) { _ in
            
            self.num += 1
            self.numberLable.text = String(self.num)
            
            print("+1 현재값: \(self.num)")
            
        }
        let resetAction = UIAlertAction(title: "Reset", style: .destructive) { _ in
            print("초기화")
            
            self.num = 0
            self.numberLable.text = String(self.num)
            
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
       
        
        alertController.addAction(okAction) 
        alertController.addAction(cancelAction)
        alertController.addAction(resetAction)
        
        
        present(alertController, animated: true)
    }
}

