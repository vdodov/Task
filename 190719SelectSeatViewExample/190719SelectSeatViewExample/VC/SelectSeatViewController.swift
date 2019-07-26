//
//  ViewController.swift
//  190719SelectSeatViewExample
//
//  Created by 차수연 on 19/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class SelectSeatViewController: UIViewController {
  
  let selectPeopleCountView: SelectSeatView = {
    let view = SelectSeatView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.3118311216)
    
    selectPeopleCountView.delegate = self
    setupSelectPeopleCountView()

  }

  func setupSelectPeopleCountView() {
    view.addSubview(selectPeopleCountView)
    
    let guide = view.safeAreaLayoutGuide
    selectPeopleCountView.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
    selectPeopleCountView.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
    selectPeopleCountView.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
    selectPeopleCountView.bottomAnchor.constraint(equalTo: guide.bottomAnchor).isActive = true
    
  }
  
}

extension SelectSeatViewController: SelectSeatViewDelegate {
  func touchUpPlusButton(_ sender: UIButton) {
    UIAlertController.show(title: "", message: "인원선택은 총 8명까지 가능합니다", from: self)
  }
  
  
}
