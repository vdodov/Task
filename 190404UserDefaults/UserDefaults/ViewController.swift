//
//  ViewController.swift
//  UserDefaults
//
//  Created by giftbot on 2018. 10. 3..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

  @IBOutlet private weak var datePicker: UIDatePicker!
  @IBOutlet private weak var alertSwitch: UISwitch!

  // MARK: Action Handler
  
  @IBAction func saveData(_ button: UIButton) {

    UserDefaults.standard.set(datePicker.date, forKey: "date")
    UserDefaults.standard.set(alertSwitch.isOn, forKey: "switch")
    
  }
  
  @IBAction func loadData(_ button: UIButton) {

    let date = UserDefaults.standard.object(forKey: "date")
    datePicker.setDate(date as? Date ?? Date(), animated: true)
    
    let sw = UserDefaults.standard.bool(forKey: "switch")
    alertSwitch.isOn = sw
    
    

  }
}

