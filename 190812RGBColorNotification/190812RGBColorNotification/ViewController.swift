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
  
  let greenSlider: UISlider = {
    let slider = UISlider()
    slider.translatesAutoresizingMaskIntoConstraints = false
    return slider
  }()
  
  let blueSlider: UISlider = {
    let slider = UISlider()
    slider.translatesAutoresizingMaskIntoConstraints = false
    return slider
  }()
  
  let alphaLabel: UILabel = {
    let label = UILabel()
    label.text = "alpha"
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let alphaSlider: UISlider = {
    let slider = UISlider()
    slider.translatesAutoresizingMaskIntoConstraints = false
    return slider
  }()
  
  let setButton: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("Set Color", for: .normal)
    button.addTarget(self, action: #selector(didTapSetButton(_:)), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  
  
  

  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupAddsubView()
    setupView()
    
  }
  
  @objc func didTapSetButton(_ sender: UIButton) {
    let color = UIColor(
      red: CGFloat(redSlider.value),
      green: CGFloat(greenSlider.value),
      blue: CGFloat(blueSlider.value),
      alpha: CGFloat(alphaSlider.value)
    )
    
    NotificationCenter.default.post(name: ViewController.didSetRGBColorNotification, object: color)
  }

  func setupAddsubView() {
    view.addSubview(redLabel)
    view.addSubview(greenLabel)
    view.addSubview(blueLabel)
    view.addSubview(alphaLabel)
    
    view.addSubview(redSlider)
    view.addSubview(greenSlider)
    view.addSubview(blueSlider)
    view.addSubview(alphaSlider)
    
    view.addSubview(setButton)
  }

  func setupView() {
    
    let guide = view.safeAreaLayoutGuide
    
    redLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 50).isActive = true
    redLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 30).isActive = true
    
    redSlider.leadingAnchor.constraint(equalTo: redLabel.trailingAnchor, constant: 30).isActive = true
    redSlider.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -30).isActive = true
    redSlider.centerYAnchor.constraint(equalTo: redLabel.centerYAnchor).isActive = true
    
    greenLabel.topAnchor.constraint(equalTo: redLabel.bottomAnchor, constant: 30).isActive = true
    greenLabel.leadingAnchor.constraint(equalTo: redLabel.leadingAnchor).isActive = true
    
    greenSlider.leadingAnchor.constraint(equalTo: redSlider.leadingAnchor).isActive = true
    greenSlider.trailingAnchor.constraint(equalTo: redSlider.trailingAnchor).isActive = true
    greenSlider.centerYAnchor.constraint(equalTo: greenLabel.centerYAnchor).isActive = true
    
    blueLabel.topAnchor.constraint(equalTo: greenLabel.bottomAnchor, constant: 30).isActive = true
    blueLabel.leadingAnchor.constraint(equalTo: redLabel.leadingAnchor).isActive = true
    
    blueSlider.leadingAnchor.constraint(equalTo: redSlider.leadingAnchor).isActive = true
    blueSlider.trailingAnchor.constraint(equalTo: redSlider.trailingAnchor).isActive = true
    blueSlider.centerYAnchor.constraint(equalTo: blueLabel.centerYAnchor).isActive = true
    
    alphaLabel.topAnchor.constraint(equalTo: blueLabel.bottomAnchor, constant: 30).isActive = true
    alphaLabel.leadingAnchor.constraint(equalTo: redLabel.leadingAnchor).isActive = true
    
    alphaSlider.leadingAnchor.constraint(equalTo: redSlider.leadingAnchor).isActive = true
    alphaSlider.trailingAnchor.constraint(equalTo: redSlider.trailingAnchor).isActive = true
    alphaSlider.centerYAnchor.constraint(equalTo: alphaLabel.centerYAnchor).isActive = true
    
    
    setButton.topAnchor.constraint(equalTo: alphaSlider.bottomAnchor, constant: 50).isActive = true
    setButton.centerXAnchor.constraint(equalTo: guide.centerXAnchor).isActive = true
    
    
  }
}

extension ViewController {
  static var didSetRGBColorNotification: Notification.Name {
    return Notification.Name("DidSetRGBColorNotification")
  }
}
