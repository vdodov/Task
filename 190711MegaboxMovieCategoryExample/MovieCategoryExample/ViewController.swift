//
//  ViewController.swift
//  MovieCategoryExample
//
//  Created by 차수연 on 05/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let menuView = MenuTitleView()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupMenuView()
  }

  private func setupMenuView() {
    view.addSubview(menuView)
    menuView.translatesAutoresizingMaskIntoConstraints = false
    let guide = view.safeAreaLayoutGuide
    NSLayoutConstraint.activate([
      menuView.topAnchor.constraint(equalTo: guide.topAnchor),
      menuView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
      menuView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
      menuView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
      ])
  }
}

