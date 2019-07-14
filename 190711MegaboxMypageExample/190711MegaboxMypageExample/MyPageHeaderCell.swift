//
//  MyPageHeaderCell.swift
//  190711MegaboxMypageExample
//
//  Created by 차수연 on 12/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class MyPageHeaderCell: UITableViewCell {
  static let identifier = "MyPageHeaderCell"
  
  let headerProfileView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  //user정보
  let userImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = #imageLiteral(resourceName: "default_icon_profile_image")
    imageView.layer.borderWidth = 1
    imageView.layer.borderColor = #colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1)
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  let userName: UILabel = {
    let label = UILabel()
    label.text = "차수연"
    label.font = UIFont.systemFont(ofSize: 16)
    label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let userId: UILabel = {
    let label = UILabel()
    label.text = "vdodov12"
    label.font = UIFont.systemFont(ofSize: 11)
    label.textColor = #colorLiteral(red: 0.4, green: 0.4, blue: 0.4, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let specialMembershipLabel: UILabel = {
    let label = UILabel()
    label.text = "스페셜 맴버십 |"
    label.textAlignment = .center
    label.textColor = #colorLiteral(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 10, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let isMembership: UIButton = {
    let button = UIButton()
    button.setTitle("가입된 스페셜 맴버십이 없습니다.", for: .normal)
    button.contentHorizontalAlignment = .left
    button.setTitleColor(#colorLiteral(red: 0.3319479695, green: 0.3319479695, blue: 0.3319479695, alpha: 1), for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 10)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let userGrade: UIImageView = {
    let imageView = UIImageView()
    imageView.image = #imageLiteral(resourceName: "menu_icon_class_normal")
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  let headerViewBottomLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.6588235294, green: 0.6588235294, blue: 0.6588235294, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let profileChageButton: UIButton = {
    let button = UIButton()
    button.setTitleColor(#colorLiteral(red: 0.3254901961, green: 0.337254902, blue: 0.3529411765, alpha: 1), for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
    button.setTitle("개인정보 수정", for: .normal)
    button.setImage(#imageLiteral(resourceName: "user"), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let pwChageButton: UIButton = {
    let button = UIButton()
    button.setTitleColor(#colorLiteral(red: 0.3254901961, green: 0.337254902, blue: 0.3529411765, alpha: 1), for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
    button.setTitle("비밀번호 변경", for: .normal)
    button.setImage(#imageLiteral(resourceName: "lock"), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let buttonBottomLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.6588235294, green: 0.6588235294, blue: 0.6588235294, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let buttonSeparatLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.6588235294, green: 0.6588235294, blue: 0.6588235294, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let separatView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    setupHeaderCell()
  }
  
  private func setupHeaderCell() {
    addSubview(headerProfileView)
    headerProfileView.topAnchor.constraint(equalTo: topAnchor).isActive = true
    headerProfileView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    headerProfileView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    headerProfileView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    
    headerProfileView.addSubview(userImageView)
    userImageView.layer.cornerRadius = imageView!.frame.width / 2
    userImageView.topAnchor.constraint(equalTo: headerProfileView.topAnchor, constant: 10).isActive = true
    userImageView.leadingAnchor.constraint(equalTo: headerProfileView.leadingAnchor, constant: 10).isActive = true
    userImageView.widthAnchor.constraint(equalTo: headerProfileView.widthAnchor, multiplier: 0.15).isActive = true
    userImageView.heightAnchor.constraint(equalTo: headerProfileView.heightAnchor, multiplier: 0.6).isActive = true
    
    headerProfileView.addSubview(userName)
    userName.leadingAnchor.constraint(equalTo: userImageView.trailingAnchor, constant: 10).isActive = true
    userName.centerYAnchor.constraint(equalTo: userImageView.centerYAnchor).isActive = true
    userName.widthAnchor.constraint(equalToConstant: 100).isActive = true
    userName.heightAnchor.constraint(equalToConstant: 20).isActive = true
    
    headerProfileView.addSubview(userId)
    userId.topAnchor.constraint(equalTo: userName.bottomAnchor).isActive = true
    userId.leadingAnchor.constraint(equalTo: userName.leadingAnchor).isActive = true
    userId.widthAnchor.constraint(equalToConstant: 100).isActive = true
    userId.heightAnchor.constraint(equalToConstant: 15).isActive = true
    
    headerProfileView.addSubview(specialMembershipLabel)
    specialMembershipLabel.topAnchor.constraint(equalTo: userImageView.bottomAnchor, constant: 5).isActive = true
    specialMembershipLabel.centerXAnchor.constraint(equalTo: userImageView.centerXAnchor).isActive = true
    specialMembershipLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
    specialMembershipLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
    
    headerProfileView.addSubview(isMembership)
    isMembership.topAnchor.constraint(equalTo: specialMembershipLabel.topAnchor).isActive = true
    isMembership.leadingAnchor.constraint(equalTo: specialMembershipLabel.trailingAnchor).isActive = true
    isMembership.widthAnchor.constraint(equalToConstant: 200).isActive = true
    isMembership.heightAnchor.constraint(equalTo: specialMembershipLabel.heightAnchor).isActive = true
    
    headerProfileView.addSubview(userGrade)
    userGrade.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
    userGrade.centerYAnchor.constraint(equalTo: userImageView.centerYAnchor).isActive = true
    userGrade.widthAnchor.constraint(equalToConstant: 30).isActive = true
    userGrade.heightAnchor.constraint(equalToConstant: 15).isActive = true
    
    
    addSubview(headerViewBottomLine)
    headerViewBottomLine.topAnchor.constraint(equalTo: headerProfileView.bottomAnchor).isActive = true
    headerViewBottomLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    headerViewBottomLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    headerViewBottomLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    addSubview(profileChageButton)
    profileChageButton.topAnchor.constraint(equalTo: headerViewBottomLine.bottomAnchor).isActive = true
    profileChageButton.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    profileChageButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
    profileChageButton.heightAnchor.constraint(equalToConstant: 40).isActive = true

    profileChageButton.addSubview(buttonSeparatLine)
    buttonSeparatLine.topAnchor.constraint(equalTo: profileChageButton.topAnchor).isActive = true
    buttonSeparatLine.trailingAnchor.constraint(equalTo: profileChageButton.trailingAnchor).isActive = true
    buttonSeparatLine.bottomAnchor.constraint(equalTo: profileChageButton.bottomAnchor).isActive = true
    buttonSeparatLine.widthAnchor.constraint(equalToConstant: 1).isActive = true

    addSubview(pwChageButton)
    pwChageButton.topAnchor.constraint(equalTo: profileChageButton.topAnchor).isActive = true
    pwChageButton.leadingAnchor.constraint(equalTo: profileChageButton.trailingAnchor).isActive = true
    pwChageButton.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    pwChageButton.widthAnchor.constraint(equalTo: profileChageButton.widthAnchor).isActive = true
    pwChageButton.heightAnchor.constraint(equalTo: profileChageButton.heightAnchor).isActive = true

    addSubview(buttonBottomLine)
    buttonBottomLine.topAnchor.constraint(equalTo: profileChageButton.bottomAnchor).isActive = true
    buttonBottomLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    buttonBottomLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    buttonBottomLine.heightAnchor.constraint(equalToConstant: 1).isActive = true

    addSubview(separatView)
    separatView.topAnchor.constraint(equalTo: buttonBottomLine.bottomAnchor).isActive = true
    separatView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    separatView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    separatView.heightAnchor.constraint(equalToConstant: 10).isActive = true
    separatView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
