//
//  MainTabBarController.swift
//  190603APIMoviePractice
//
//  Created by 차수연 on 06/06/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit
import Alamofire

class MainTabBarController: UITabBarController {
  let shared = MovieSingleton.shared
  
  let tableVC = MovieTableViewController()
  let collectionVC = MovieCollectionViewController()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableVC.tabBarItem = UITabBarItem(title: "Table", image: UIImage(named: "list"), selectedImage: UIImage(named: "list"))
    collectionVC.tabBarItem = UITabBarItem(title: "Collection", image: UIImage(named: "collection"), selectedImage: UIImage(named: "collection"))
    
    
    let tableNavi = UINavigationController(rootViewController: tableVC)
    let collectionNavi = UINavigationController(rootViewController: collectionVC)
    
    let rightButton = UIBarButtonItem(image: UIImage(named: "setting"), style: .plain, target: self, action: #selector(didTapButton(_:)))
    let rightButton2 = UIBarButtonItem(image: UIImage(named: "setting"), style: .plain, target: self, action: #selector(didTapButton(_:)))
    
    rightButton.tintColor = .gray
    rightButton2.tintColor = .gray
    
   tableVC.navigationItem.setRightBarButton(rightButton, animated: true)
   collectionVC.navigationItem.setRightBarButton(rightButton2, animated: true)
    
    self.viewControllers = [tableNavi, collectionNavi]
    
  }
 
  
  @objc func didTapButton(_ sender: UIBarButtonItem) {
    alertController()
  }
  
  private func alertController() {
    let alert = UIAlertController(title: "정렬방식 선택", message: "영화를 어떤 순서로 정렬할까요", preferredStyle: .actionSheet)
    
    let reservationRate = UIAlertAction(title: "예매율", style: .default) { (UIAlertAction) in
      self.tableVC.title = "예매율순"
      self.collectionVC.title = "예매율순"
      self.shared.url = "http://connect-boxoffice.run.goorm.io/movies"
      self.shared.getData(vc: self.tableVC)
      self.shared.getData(vc: self.collectionVC)
      
    }
    
    let curation = UIAlertAction(title: "큐레이션", style: .default) { (UIAlertAction) in
      self.tableVC.title = "큐레이션순"
      self.collectionVC.title = "큐레이션순"
      self.shared.url = "http://connect-boxoffice.run.goorm.io/movies?order_type=2"
      self.shared.getData(vc: self.tableVC)
      self.shared.getData(vc: self.collectionVC)
    }
    
    let date = UIAlertAction(title: "개봉일", style: .default) { (UIAlertAction) in
      self.tableVC.title = "개봉일순"
      self.collectionVC.title = "개봉일순"
      self.shared.url = "http://connect-boxoffice.run.goorm.io/movies?order_type=3"
      self.shared.getData(vc: self.tableVC)
      self.shared.getData(vc: self.collectionVC)
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
