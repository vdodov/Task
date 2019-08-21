//
//  MainTabBarController.swift
//  190603APIMoviePractice
//
//  Created by 차수연 on 06/06/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let tableVC = MovieTableViewController()
    let collectionVC = MovieCollectionViewController()
    
    tableVC.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
    collectionVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
    
    let tableNavi = UINavigationController(rootViewController: tableVC)
    let collectionNavi = UINavigationController(rootViewController: collectionVC)
    
    let rightButton = UIBarButtonItem(image: UIImage(named: "setting"), style: .plain, target: self, action: #selector(didTapButton(_:)))
    rightButton.tintColor = .gray
    
   tableVC.navigationItem.setRightBarButton(rightButton, animated: true)
   collectionVC.navigationItem.setRightBarButton(rightButton, animated: true)
    
    self.viewControllers = [tableNavi,collectionNavi]
    
    
    
    
  }
  
  @objc func didTapButton(_ sender: UIBarButtonItem) {
    alertController()
  }
  //예매율, 큐레이션, 개봉일 ,취소
  func alertController() {
    let alert = UIAlertController(title: "정렬방식 선택", message: "영화를 어떤 순서로 정렬할까요", preferredStyle: .actionSheet)
    let reservationRate = UIAlertAction(title: "예매율", style: .default) { (UIAlertAction) in
      
    }
    let curation = UIAlertAction(title: "큐레이션", style: .default) { (UIAlertAction) in
      
    }
    let date = UIAlertAction(title: "개봉일", style: .default) { (UIAlertAction) in
      
    }
    let cancel = UIAlertAction(title: "취소", style: .cancel) { (UIAlertAction) in
      
    }
    alert.addAction(reservationRate)
    alert.addAction(curation)
    alert.addAction(date)
    alert.addAction(cancel)
    present(alert, animated: true)
  }
  
}
