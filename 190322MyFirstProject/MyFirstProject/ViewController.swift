//
//  ViewController.swift
//  MyFirstProject
//
//  Created by 차수연 on 22/03/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    var num = 0
    
    @IBOutlet weak var numberLable: UILabel!
    @IBOutlet weak var decreaseButton: UIButton!
    @IBOutlet weak var increaseButton: UIButton!
    
    
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var myLabel: UILabel!
    
    
    @IBOutlet weak var mySegment: UISegmentedControl!
    @IBOutlet weak var myLabel2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
    }
    //1) -버튼 , +버튼 누르면 숫자가 증가 또는 감소하도록 하기
    //2) 숫자가 증가할 때는 label 의 텍스트 색을 파란색,   감소할 때는 빨간색
    @IBAction func didTapDecreaseButton(_ sender: UIButton) {
        print("감소")
        
        num = num - 1
        numberLable.text = String(num)
        numberLable.textColor = .red
    }
    
    @IBAction func didTapIncreaseButton(_ sender: UIButton) {
        print("증가")

        num = num + 1
        numberLable.text = String(num)
        numberLable.textColor = .blue
    }
    
    //UISwitch : On, Off 가 바뀔 때마다 Label 의 내용이 On, Off 로 표시되도록 구현
    @IBAction func onSwitch(_ sender: UISwitch) {
        if(sender.isOn == true) {
            myLabel.text = "ON"
            print("ON")
        }else {
            myLabel.text = "OFF"
            print("OFF")
        }
        
    }
    
    //UISegmentedControl : 선택 내용이 바뀔 때마다 Label 의 내용도 해당 타이틀 값으로 함께 변경되도록 구현
    @IBAction func onSegmentControl(_ sender: UISegmentedControl) {
       
        if(sender.selectedSegmentIndex == 0) {
            myLabel2.text = "First"
        }else if(sender.selectedSegmentIndex == 1) {
            myLabel2.text = "Seconde"
        }
        
    }
    
}



