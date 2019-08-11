//
//  ViewController.swift
//  190808MegaboxPreferTheaterExample
//
//  Created by 차수연 on 08/08/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let contentView: MyPagePreferTheaterView = {
    let view = MyPagePreferTheaterView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    setupContentView()
  }

  func setupContentView() {
    let guide = view.safeAreaLayoutGuide
    
    view.addSubview(contentView)
    contentView.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
    contentView.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
    contentView.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
    contentView.bottomAnchor.constraint(equalTo: guide.bottomAnchor).isActive = true
  }

}

