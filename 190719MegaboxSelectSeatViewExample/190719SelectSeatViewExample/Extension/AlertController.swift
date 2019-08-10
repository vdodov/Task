//
//  AlertController.swift
//  190719SelectSeatViewExample
//
//  Created by 차수연 on 24/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

extension UIAlertController {
  class func show(title:String?, message: String, from controller: UIViewController) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "확인", style: .default))
    controller.show(alert, sender: nil)
  }
}

