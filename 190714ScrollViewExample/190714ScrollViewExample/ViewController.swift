//
//  ViewController.swift
//  190714ScrollViewExample
//
//  Created by 차수연 on 14/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  private let scrollView: UIScrollView = {
    let scrollView = UIScrollView()
    scrollView.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    scrollView.translatesAutoresizingMaskIntoConstraints = false
    return scrollView
  }()
  
  private let redView: UIView = {
    let view = UIView()
    view.backgroundColor = .red
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  private let blueView: UIView = {
    let view = UIView()
    view.backgroundColor = .blue
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupScrollView()
    endRefresh()
  }

  private func setupScrollView() {
    let refresh = UIRefreshControl()
    scrollView.refreshControl = refresh
    refresh.addTarget(self, action: #selector(endRefresh), for: .allEvents)
    
    let guide = view.safeAreaLayoutGuide
    
    // MARK: - ScrollView
    view.addSubview(scrollView)
    scrollView.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
    scrollView.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
    scrollView.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
    scrollView.bottomAnchor.constraint(equalTo: guide.bottomAnchor).isActive = true
  
    // MARK: - RedView
    scrollView.addSubview(redView)
    redView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
    redView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
    redView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
    redView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
    redView.heightAnchor.constraint(equalToConstant: 900).isActive = true

//     MARK: - BlueView
    scrollView.addSubview(blueView)
    blueView.topAnchor.constraint(equalTo: redView.bottomAnchor).isActive = true
    blueView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
    blueView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
    blueView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    blueView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
    blueView.heightAnchor.constraint(equalTo: redView.heightAnchor).isActive = true
    
    
  }
  
  
  @objc private func endRefresh() {
    scrollView.refreshControl?.endRefreshing()
  }

}

