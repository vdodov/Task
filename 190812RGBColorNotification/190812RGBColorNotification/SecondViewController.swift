//
//  SecondViewController.swift
//  190812RGBColorNotification
//
//  Created by 차수연 on 15/08/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
  
  let colorView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()

    override func viewDidLoad() {
        super.viewDidLoad()
      
      setUpColorView()
      
      NotificationCenter.default
        .addObserver(self, selector: #selector(setColorViewBackgroundColor(_:)), name: ViewController.didSetRGBColorNotification, object: nil)

  }
  
  func setUpColorView() {
    view.addSubview(colorView)
    
    colorView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    colorView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    colorView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    colorView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    
  }
  
  @objc private func setColorViewBackgroundColor(_ sender: Notification) {
    let postedColor = sender.object as! UIColor
    colorView.backgroundColor = postedColor
    
  }
  
  deinit {
    NotificationCenter.default.removeObserver(self)
  }

 
}

