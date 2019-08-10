//
//  Label.swift
//  PaymentExample
//
//  Created by 차수연 on 06/08/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

extension UILabel {
  func labelConfigure(_ text: String) {
    self.text = text
    self.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
  }
  
  func labelSetup(text: String, color: UIColor, fontSize: CGFloat, alignment: NSTextAlignment?) {
    self.text = text
    self.font = UIFont.systemFont(ofSize: fontSize, weight: .semibold)
    self.textColor = color
    self.textAlignment = alignment ?? NSTextAlignment.left
  }
}
