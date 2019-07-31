//
//  ViewController.swift
//  190727MegaboxMovieDetailExample
//
//  Created by 차수연 on 27/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  let topView: MovieDetailTopView = {
    let view = MovieDetailTopView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  let detailContentView: MovieDetailView = {
    let view = MovieDetailView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    setupDetailView()
    
  }

  func setupDetailView() {
    
  
    let guide = view.safeAreaLayoutGuide
    
    view.addSubview(topView)
    topView.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
    topView.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
    topView.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
    topView.heightAnchor.constraint(equalToConstant: 41).isActive = true
    
    view.addSubview(detailContentView)
    detailContentView.topAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
    detailContentView.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
    detailContentView.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
    detailContentView.bottomAnchor.constraint(equalTo: guide.bottomAnchor).isActive = true
    
  }
  
}
