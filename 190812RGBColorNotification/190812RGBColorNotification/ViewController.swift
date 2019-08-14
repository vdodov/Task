//
//  ViewController.swift
//  190812RGBColorNotification
//
//  Created by 차수연 on 12/08/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let redLabel: UILabel = {
    let label = UILabel()
    label.text = "red"
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let greenLabel: UILabel = {
    let label = UILabel()
    label.text = "green"
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let blueLabel: UILabel = {
    let label = UILabel()
    label.text = "blue"
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let redSlider: UISlider = {
    let slider = UISlider()
    slider.translatesAutoresizingMaskIntoConstraints = false
    return slider
  }()
  
  
  
  

  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupAddsubView()
    setupView()
    
  }

  func setupAddsubView() {
    view.addSubview(redLabel)
    view.addSubview(greenLabel)
    view.addSubview(blueLabel)
    
    view.addSubview(redSlider)
  }

  func setupView() {
    
  }
}

