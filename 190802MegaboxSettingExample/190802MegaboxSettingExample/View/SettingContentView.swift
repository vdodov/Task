//
//  SettingContentView.swift
//  190802MegaboxSettingExample
//
//  Created by 차수연 on 02/08/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class SettingContentView: UIView {
  
  //network
  let networkTitleLabel: UILabel = {
    let label = UILabel()
    label.text = "데이터 네트워크 환경설정"
    label.textColor = #colorLiteral(red: 0.3292163694, green: 0.3292163694, blue: 0.3292163694, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 12)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let networkViewTopLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let networkView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  let networkContentLabel: UILabel = {
    let label = UILabel()
    label.text = "3G/LTE 바로보기 허용"
    label.font = UIFont.systemFont(ofSize: 16)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let networkSwitch: UISwitch = {
    let networkSwitch = UISwitch()
    networkSwitch.translatesAutoresizingMaskIntoConstraints = false
    return networkSwitch
  }()
  
  let networkViewBottomLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  //version
  let versionTitleLabel: UILabel = {
    let label = UILabel()
    label.text = "버전정보"
    label.textColor = #colorLiteral(red: 0.3292163694, green: 0.3292163694, blue: 0.3292163694, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 12)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let versionViewTopLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let versionView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  let versionContentLabel: UILabel = {
    let label = UILabel()
    label.text = "ver 3.1.8"
    label.font = UIFont.systemFont(ofSize: 16)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let versionViewBottomLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  //notice
  let noticeTitleLabel: UILabel = {
    let label = UILabel()
    label.text = "알림 정보"
    label.textColor = #colorLiteral(red: 0.3292163694, green: 0.3292163694, blue: 0.3292163694, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 12)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let noticeViewTopLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let noticeView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  let noticeContentLabel: UILabel = {
    let label = UILabel()
    label.text = "알림 설정"
    label.font = UIFont.systemFont(ofSize: 16)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let noticeSwitch: UISwitch = {
    let noticeSwitch = UISwitch()
    noticeSwitch.translatesAutoresizingMaskIntoConstraints = false
    return noticeSwitch
  }()
  
  let noticeViewBottomLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let agreeView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  let agreeContentLabel: UILabel = {
    let label = UILabel()
    label.text = "해택알림 수신동의"
    label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 16)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let addButton: UIButton = {
    let button = UIButton()
    button.setImage(#imageLiteral(resourceName: "common_btn_topbar_prev2"), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let agreeViewBottomLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  //login
  let loginTitleLabel: UILabel = {
    let label = UILabel()
    label.text = "로그인 정보"
    label.textColor = #colorLiteral(red: 0.3292163694, green: 0.3292163694, blue: 0.3292163694, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 12)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let idViewTopLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let idView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  let idContentLabel: UILabel = {
    let label = UILabel()
    label.text = "회원 아이디"
    label.font = UIFont.systemFont(ofSize: 16)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let idLabel: UILabel = {
    let label = UILabel()
    label.text = "vdodov"
    label.font = UIFont.systemFont(ofSize: 16)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let idViewBottomLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let logoutView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  let logoutContentLabel: UILabel = {
    let label = UILabel()
    label.text = "로그아웃"
    label.font = UIFont.systemFont(ofSize: 16)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let logoutButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    button.alpha = 0
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let logoutViewBottomLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  

  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = #colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1)
    
    setupSettingView()
  }
  
  func setupSettingView() {
    //network
    addSubview(networkTitleLabel)
    networkTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 50).isActive = true
    networkTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    
    addSubview(networkView)
    networkView.topAnchor.constraint(equalTo: networkTitleLabel.bottomAnchor, constant: 10).isActive = true
    networkView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    networkView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    networkView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    addSubview(networkViewTopLine)
    networkViewTopLine.topAnchor.constraint(equalTo: networkView.topAnchor).isActive = true
    networkViewTopLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    networkViewTopLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    networkViewTopLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    
    addSubview(networkViewBottomLine)
    networkViewBottomLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    networkViewBottomLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    networkViewBottomLine.bottomAnchor.constraint(equalTo: networkView.bottomAnchor).isActive = true
    networkViewBottomLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    addSubview(networkContentLabel)
    networkContentLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    networkContentLabel.centerYAnchor.constraint(equalTo: networkView.centerYAnchor).isActive = true
    
    addSubview(networkSwitch)
    networkSwitch.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
    networkSwitch.centerYAnchor.constraint(equalTo: networkView.centerYAnchor).isActive = true
    
    
    //version
    addSubview(versionTitleLabel)
    versionTitleLabel.topAnchor.constraint(equalTo: networkViewBottomLine.bottomAnchor, constant: 30).isActive
     = true
    versionTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    
    addSubview(versionView)
    versionView.topAnchor.constraint(equalTo: versionTitleLabel.bottomAnchor, constant: 10).isActive = true
    versionView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    versionView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    versionView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    addSubview(versionViewTopLine)
    versionViewTopLine.topAnchor.constraint(equalTo: versionView.topAnchor).isActive = true
    versionViewTopLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    versionViewTopLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    versionViewTopLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    addSubview(versionViewBottomLine)
    versionViewBottomLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    versionViewBottomLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    versionViewBottomLine.bottomAnchor.constraint(equalTo: versionView.bottomAnchor).isActive = true
    versionViewBottomLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    addSubview(versionContentLabel)
    versionContentLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    versionContentLabel.centerYAnchor.constraint(equalTo: versionView.centerYAnchor).isActive = true
    
    //notice
    addSubview(noticeTitleLabel)
    noticeTitleLabel.topAnchor.constraint(equalTo: versionViewBottomLine.bottomAnchor, constant: 30).isActive = true
    noticeTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    
    addSubview(noticeView)
    noticeView.topAnchor.constraint(equalTo: noticeTitleLabel.bottomAnchor, constant: 10).isActive = true
    noticeView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    noticeView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    noticeView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    addSubview(noticeViewTopLine)
    noticeViewTopLine.topAnchor.constraint(equalTo: noticeView.topAnchor).isActive = true
    noticeViewTopLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    noticeViewTopLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    noticeViewTopLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    addSubview(noticeViewBottomLine)
    noticeViewBottomLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    noticeViewBottomLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    noticeViewBottomLine.bottomAnchor.constraint(equalTo: noticeView.bottomAnchor).isActive = true
    noticeViewBottomLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    addSubview(noticeContentLabel)
    noticeContentLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    noticeContentLabel.centerYAnchor.constraint(equalTo: noticeView.centerYAnchor).isActive = true
    
    addSubview(noticeSwitch)
    noticeSwitch.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
    noticeSwitch.centerYAnchor.constraint(equalTo: noticeView.centerYAnchor).isActive = true
    
    addSubview(agreeView)
    agreeView.topAnchor.constraint(equalTo: noticeViewBottomLine.bottomAnchor).isActive = true
    agreeView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    agreeView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    agreeView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    addSubview(agreeContentLabel)
    agreeContentLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    agreeContentLabel.centerYAnchor.constraint(equalTo: agreeView.centerYAnchor).isActive = true
    
    addSubview(addButton)
    addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
    addButton.centerYAnchor.constraint(equalTo: agreeView.centerYAnchor).isActive = true
    addButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
    addButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    
    addSubview(agreeViewBottomLine)
    agreeViewBottomLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    agreeViewBottomLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    agreeViewBottomLine.bottomAnchor.constraint(equalTo: agreeView.bottomAnchor).isActive = true
    agreeViewBottomLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    //login
    addSubview(loginTitleLabel)
    loginTitleLabel.topAnchor.constraint(equalTo: agreeViewBottomLine.bottomAnchor, constant: 30).isActive = true
    loginTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    
    addSubview(idView)
    idView.topAnchor.constraint(equalTo: loginTitleLabel.bottomAnchor, constant: 10).isActive = true
    idView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    idView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    idView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    addSubview(idViewTopLine)
    idViewTopLine.topAnchor.constraint(equalTo: idView.topAnchor).isActive = true
    idViewTopLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    idViewTopLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    idViewTopLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    addSubview(idViewBottomLine)
    idViewBottomLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    idViewBottomLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    idViewBottomLine.bottomAnchor.constraint(equalTo: idView.bottomAnchor).isActive = true
    idViewBottomLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    addSubview(idContentLabel)
    idContentLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    idContentLabel.centerYAnchor.constraint(equalTo: idView.centerYAnchor).isActive = true
    
    addSubview(idLabel)
    idLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
    idLabel.centerYAnchor.constraint(equalTo: idView.centerYAnchor).isActive = true
    
    addSubview(logoutView)
    logoutView.topAnchor.constraint(equalTo: idViewBottomLine.bottomAnchor).isActive = true
    logoutView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    logoutView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    logoutView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    addSubview(logoutContentLabel)
    logoutContentLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    logoutContentLabel.centerYAnchor.constraint(equalTo: logoutView.centerYAnchor).isActive = true
    
    addSubview(logoutViewBottomLine)
    logoutViewBottomLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    logoutViewBottomLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    logoutViewBottomLine.bottomAnchor.constraint(equalTo: logoutView.bottomAnchor).isActive = true
    logoutViewBottomLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    addSubview(logoutButton)
    logoutButton.topAnchor.constraint(equalTo: logoutView.topAnchor).isActive = true
    logoutButton.leadingAnchor.constraint(equalTo: logoutView.leadingAnchor).isActive = true
    logoutButton.trailingAnchor.constraint(equalTo: logoutView.trailingAnchor).isActive = true
    logoutButton.bottomAnchor.constraint(equalTo: logoutView.bottomAnchor).isActive = true
    
    
    
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
}
