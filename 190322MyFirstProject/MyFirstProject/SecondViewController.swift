//
//  SecondViewController.swift
//  MyFirstProject
//
//  Created by 차수연 on 22/03/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var num = 0
    let quantitiyLabel = UILabel()
    let upButton = UIButton(type: .system)
    let downButton = UIButton(type: .system)
    
    let switchLabel = UILabel()
    let onOffSwitch = UISwitch()
    
    let segmentLable = UILabel()
    let selectSegment = UISegmentedControl()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //quantitiyLabel
        quantitiyLabel.frame = CGRect(x: 140, y: 100, width: 100, height: 100)
        quantitiyLabel.text = "0"
        view.addSubview(quantitiyLabel)
        
        //upButton
        upButton.frame = CGRect(x: 50, y: 150, width: 100, height: 100)
        upButton.setTitle("UP", for: .normal)
        upButton.addTarget(self, action: #selector(upQuantity), for: .touchUpInside)
        view.addSubview(upButton)
        
        //downButton
        downButton.frame = CGRect(x: 150, y: 150, width: 100, height: 100)
        downButton.setTitle("DOWN", for: .normal)
        downButton.addTarget(self, action: #selector(downQuantity), for: .touchUpInside)
        view.addSubview(downButton)
        
        
        //switchLabel
        switchLabel.frame = CGRect(x: 150, y: 200, width: 100, height: 100)
        switchLabel.text = onOffSwitch.isOn ? "On" : "Off"
        view.addSubview(switchLabel)
        
        //onOffSwitch
        onOffSwitch.frame = CGRect(x: 150, y: 280, width: 200, height: 200)
        onOffSwitch.addTarget(self, action: #selector(toggleSwitch), for: .valueChanged)
        view.addSubview(onOffSwitch)
        
        //segmentLable
        segmentLable.frame = CGRect(x: 150, y: 400, width: 100, height: 100)
        segmentLable.text = "None"
        view.addSubview(segmentLable)
        
        //selectSegment
        selectSegment.insertSegment(withTitle: "1", at: 0, animated: false)
        selectSegment.insertSegment(withTitle: "2", at: 1, animated: false)
        selectSegment.frame = CGRect(x: 100, y: 350, width: 200, height: 35)
        selectSegment.addTarget(self, action: #selector(selectSegmentControl), for: .valueChanged)
        view.addSubview(selectSegment)

    }
    
    @objc func upQuantity(_ sender: UIButton) {
        num += 1
        quantitiyLabel.text = String(num)
        quantitiyLabel.textColor = .blue
    }
    
    @objc func downQuantity(_ sender: UIButton) {
        num -= 1
        quantitiyLabel.text = String(num)
        quantitiyLabel.textColor = .red
    }
    
    @objc func toggleSwitch(_ sender: UISwitch) {
        switchLabel.text = sender.isOn ? "ON" : "OFF"
        
    }
    
    @objc func selectSegmentControl(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        let title = sender.titleForSegment(at: index)
        segmentLable.text = title
    }
  
}
