//
//  SettingTopView.swift
//  190802MegaboxSettingExample
//
//  Created by 차수연 on 02/08/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class SettingTopView: UIView {

  private let topView: UIView = {
    let view = UIView()
    view.backgroundColor = .white
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  private let titleLabel: UILabel = {
    let label = UILabel()
    label.text = "환경설정"
    label.textColor = #colorLiteral(red: 0.2199999988, green: 0.2199999988, blue: 0.2199999988, alpha: 1)
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let titleLabelBottomLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.6588235294, green: 0.6588235294, blue: 0.6588235294, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let menuButton: UIButton = {
    let button = UIButton()
    button.setImage(#imageLiteral(resourceName: "common_btn_topbar_menu"), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let dismissButton: UIButton = {
    let button = UIButton()
    button.setImage(#imageLiteral(resourceName: "common_btn_topbar_prev2"), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let reservationButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = #colorLiteral(red: 0.2392156863, green: 0.1215686275, blue: 0.5568627451, alpha: 1)
    button.setImage(#imageLiteral(resourceName: "main_btn_topbar_booking"), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    setupMyPageTopView()
  }
  
  
  private func setupMyPageTopView() {
    addSubview(topView)
    topView.topAnchor.constraint(equalTo: topAnchor).isActive = true
    topView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    topView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    topView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    topView.addSubview(titleLabel)
    titleLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 10).isActive = true
    titleLabel.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: -10).isActive = true
    titleLabel.centerXAnchor.constraint(equalTo: topView.centerXAnchor).isActive = true
    titleLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
    
    addSubview(titleLabelBottomLine)
    titleLabelBottomLine.topAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
    titleLabelBottomLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    titleLabelBottomLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    titleLabelBottomLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    topView.addSubview(menuButton)
    menuButton.topAnchor.constraint(equalTo: topView.topAnchor).isActive = true
    menuButton.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 10).isActive = true
    menuButton.bottomAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
    menuButton.widthAnchor.constraint(equalTo: topView.widthAnchor, multiplier: 0.1).isActive = true
    
    topView.addSubview(dismissButton)
    dismissButton.topAnchor.constraint(equalTo: topView.topAnchor).isActive = true
    dismissButton.leadingAnchor.constraint(equalTo: menuButton.trailingAnchor).isActive = true
    dismissButton.bottomAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
    dismissButton.widthAnchor.constraint(equalTo: topView.widthAnchor, multiplier: 0.1).isActive = true
    
    topView.addSubview(reservationButton)
    reservationButton.topAnchor.constraint(equalTo: topView.topAnchor).isActive = true
    reservationButton.trailingAnchor.constraint(equalTo: topView.trailingAnchor).isActive = true
    reservationButton.bottomAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
    reservationButton.widthAnchor.constraint(equalTo: topView.widthAnchor, multiplier: 0.1).isActive = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}
