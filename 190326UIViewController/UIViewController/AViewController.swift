//
//  ViewController.swift
//  UIViewController
//
//  Created by 차수연 on 26/03/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class AViewController: UIViewController {

    var num: Int = 0
    var myLabel: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 100, y: 300, width: 200, height: 40)
        button.addTarget(self,
                         action: #selector(presentSecondVC),
                         for: .touchUpInside)
        button.setTitle("Count Up", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        view.addSubview(button)
        
        myLabel.frame = CGRect(x: 200, y: 200, width: 100, height: 40)
        myLabel.text = String(num)
        myLabel.textColor = .white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(myLabel)
        
    }
    
    @objc func presentSecondVC() {
        let secondVC = BViewController()
        num += 1
        secondVC.num = self.num
        present(secondVC, animated: true)
    }


}

