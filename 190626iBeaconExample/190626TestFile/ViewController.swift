//
//  ViewController.swift
//  190626TestFile
//
//  Created by 차수연 on 26/06/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let secondVC = SecondVC()
  let thridVC = ThirdVC()
  
  
  
  //출결현황
  let button: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("SecondVC", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.addTarget(self, action: #selector(didTapSecondButton), for: .touchUpInside)
    return button
  }()
  
  //설정
  let button2: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("ThridVC", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  

  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.addSubview(button)
    view.addSubview(button2)
    
    button.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    button.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    button.trailingAnchor.constraint(equalTo: button2.leadingAnchor).isActive = true
    button.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
    
    button2.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    button2.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    button2.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    button2.widthAnchor.constraint(equalTo: button.widthAnchor).isActive = true
    
  }
  
  @objc func didTapSecondButton() {
    let tabBarController = UITabBarController()
    secondVC.tabBarItem = UITabBarItem(title: "오늘", image: nil, selectedImage: nil)
    thridVC.tabBarItem = UITabBarItem(title: "전체", image: nil, selectedImage: nil)
    tabBarController.viewControllers = [secondVC, thridVC]
    present(tabBarController, animated: true)
  }


}

