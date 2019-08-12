//
//  ViewController.swift
//  190710LoginExample
//
//  Created by 차수연 on 10/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
  let loginTopView = LoginView()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.addSubview(loginTopView)
    loginTopView.translatesAutoresizingMaskIntoConstraints = false
    let guide = view.safeAreaLayoutGuide
    loginTopView.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
    loginTopView.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
    loginTopView.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
    loginTopView.bottomAnchor.constraint(equalTo: guide.bottomAnchor).isActive = true
    
  }

  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    self.view.endEditing(true)
  }
}

