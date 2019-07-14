//
//  MypageViewController.swift
//  190711MegaboxMypageExample
//
//  Created by 차수연 on 11/07/2019.
//  Copyright © 2019 차수연. All rights reserved.


//MyPage -> TableView
//Cell -> 1. HeaderCell, 2. (button - 4개)ContentCell

import UIKit

class MypageViewController: UIViewController {
  
  let myPageView: MyPageContentView = {
    let view = MyPageContentView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()

    override func viewDidLoad() {
        super.viewDidLoad()
      
      setupMaPageView()
    }
  
  
  private func setupMaPageView() {
    let guide = view.safeAreaLayoutGuide
    
    view.addSubview(myPageView)
    myPageView.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
    myPageView.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
    myPageView.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
    myPageView.bottomAnchor.constraint(equalTo: guide.bottomAnchor).isActive = true
  }

}
