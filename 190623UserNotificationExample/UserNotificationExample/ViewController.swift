//
//  ViewController.swift
//  190622UserNotificationExample
//
//  Created by 차수연 on 22/06/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let notiManager = UNNotificationManager()
  
  let button = UIButton(type: .system)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupButton()
  }
  
  private func setupButton() {
    view.addSubview(button)
    
    button.translatesAutoresizingMaskIntoConstraints = false
    button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
    button.setTitle("푸시 알림 받기", for: .normal)
    
    button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
  }
  
  
  @objc func didTapButton(_ sender: UIButton) {
    notiManager.triggerTimeIntervalNotification(timeInterval: 1.0)
    
  }
  
}

//extension ViewController: UITextFieldDelegate {
//  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//
//    //텍스트필드에 숫자만 입력받음
//    let intSet = NSCharacterSet(charactersIn: "0123456789").inverted
//    let compSepByCharInSet = string.components(separatedBy: intSet)
//    let numberFiltered = compSepByCharInSet.joined(separator: "")
//    return string == numberFiltered
//  }
//}
//
