//
//  LoginView.swift
//  190710LoginExample
//
//  Created by 차수연 on 10/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class LoginView: UIView {
  
  let topView: UIView = {
    let topView = UIView()
    topView.backgroundColor = .white
    topView.translatesAutoresizingMaskIntoConstraints = false
    return topView
  }()
  
  let topViewBottomLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.8800999603, green: 0.8800999603, blue: 0.8800999603, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let loginLabel: UILabel = {
    let label = UILabel()
    label.text = "로그인"
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 16)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let dismissButton: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("닫기", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let idTitleButton: UIButton = {
    let button = UIButton()
    button.isSelected = true
    button.setTitle("아이디", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0.2199999988, green: 0.2199999988, blue: 0.2199999988, alpha: 1), for: .normal)
    button.setTitleColor(#colorLiteral(red: 0.2392156863, green: 0.1215686275, blue: 0.5568627451, alpha: 1), for: .selected)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .regular)
    button.backgroundColor = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1)
    button.tag = 0
    button.addTarget(self, action: #selector(didTapTitleButton(_:)), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let bTitleButton: UIButton = {
    let button = UIButton()
    button.isSelected = false
    button.setTitle("생년월일", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0.2199999988, green: 0.2199999988, blue: 0.2199999988, alpha: 1), for: .normal)
    button.setTitleColor(#colorLiteral(red: 0.2392156863, green: 0.1215686275, blue: 0.5568627451, alpha: 1), for: .selected)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .regular)
    button.backgroundColor = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1)
    button.tag = 1
    button.addTarget(self, action: #selector(didTapTitleButton(_:)), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let indicatorBar: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.backgroundColor = #colorLiteral(red: 0.2392156863, green: 0.1215686275, blue: 0.5568627451, alpha: 1)
    return label
  }()
  
  let scrollView: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  let idTextField: UITextField = {
    let textField = UITextField()
    textField.placeholder = "아이디"
    textField.font = UIFont.systemFont(ofSize: 13)
    textField.borderStyle = .roundedRect
    textField.translatesAutoresizingMaskIntoConstraints = false
    return textField
  }()
  
  let passwordTextField: UITextField = {
    let textField = UITextField()
    textField.placeholder = "비밀번호"
    textField.isSecureTextEntry = true
    textField.font = UIFont.systemFont(ofSize: 13)
    textField.borderStyle = .roundedRect
    textField.translatesAutoresizingMaskIntoConstraints = false
    return textField
  }()
  
  let loginButton: UIButton = {
    let button = UIButton(type: .custom)
    button.backgroundColor = #colorLiteral(red: 0.3319479695, green: 0.3319479695, blue: 0.3319479695, alpha: 1)
    button.setTitle("로그인", for: .normal)
    button.addTarget(self, action: #selector(loginBtnAction), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  @objc func loginBtnAction() {
    print("Hi")
  }
  
  let checkButton: UIButton = {
    let button = UIButton(type: .custom)
    button.setImage(#imageLiteral(resourceName: "popup_btn_unchecked"), for: .normal)
    button.setImage(#imageLiteral(resourceName: "popup_btn_checked"), for: .selected)
    button.addTarget(self, action: #selector(didTapCheckButton(_:)), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let checkButtonLabel: UILabel = {
    let label = UILabel()
    label.text = "자동 로그인"
    label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 11, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let simpleLoginButton: UIButton = {
    let button = UIButton(type: .custom)
    button.setImage(#imageLiteral(resourceName: "megabox_mw_login_ad"), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let middleView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  let topLabel: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.8800999603, green: 0.8800999603, blue: 0.8800999603, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let bottomLabel: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.8800999603, green: 0.8800999603, blue: 0.8800999603, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let idPwFindButton: UIButton = {
    let button = UIButton(type: .custom)
    button.setTitle("ID/PW찾기", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0.2199999988, green: 0.2199999988, blue: 0.2199999988, alpha: 1), for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 11)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let registerButton: UIButton = {
    let button = UIButton(type: .custom)
    button.setTitle("회원가입", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0.2199999988, green: 0.2199999988, blue: 0.2199999988, alpha: 1), for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 11)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let restoreButton: UIButton = {
    let button = UIButton(type: .custom)
    button.setTitle("휴면계정복구", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0.2199999988, green: 0.2199999988, blue: 0.2199999988, alpha: 1), for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 11)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let separateFirstLabel: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.8494448208, green: 0.8494448208, blue: 0.8494448208, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let separateSecondLabel: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.8494448208, green: 0.8494448208, blue: 0.8494448208, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let simpleLoginLabel: UILabel = {
    let label = UILabel()
    label.text = "간편 로그인"
    label.font = UIFont.systemFont(ofSize: 13)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let paycoLoginButton: UIButton = {
    let button = UIButton(type: .custom)
    button.setImage(#imageLiteral(resourceName: "login_socialpayco"), for: .normal)
    button.layer.borderWidth = 1
    button.layer.borderColor = #colorLiteral(red: 0.8494448208, green: 0.8494448208, blue: 0.8494448208, alpha: 1)
    button.layer.cornerRadius = 5
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let paycoLoginLabel: UILabel = {
    let label = UILabel()
    label.text = "로그인"
    label.font = UIFont.systemFont(ofSize: 11, weight: .thin)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let adImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = #imageLiteral(resourceName: "ad")
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  

  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    setupLoginView()
  }
  
  private func setupLoginView() {
    
    addSubview(topView)
    addSubview(topViewBottomLine)
    addSubview(loginLabel)
    addSubview(dismissButton)
    addSubview(idTitleButton)
    addSubview(bTitleButton)
    addSubview(indicatorBar)
    addSubview(scrollView)
    
    scrollView.addSubview(idTextField)
    scrollView.addSubview(passwordTextField)
    scrollView.addSubview(loginButton)
    scrollView.addSubview(checkButton)
    scrollView.addSubview(checkButtonLabel)
    scrollView.addSubview(simpleLoginButton)
    
    scrollView.addSubview(middleView)
    scrollView.addSubview(topLabel)
    scrollView.addSubview(bottomLabel)
    
    scrollView.addSubview(idPwFindButton)
    scrollView.addSubview(registerButton)
    scrollView.addSubview(restoreButton)
    
    scrollView.addSubview(separateFirstLabel)
    scrollView.addSubview(separateSecondLabel)
    
    scrollView.addSubview(simpleLoginLabel)
    scrollView.addSubview(paycoLoginButton)
    paycoLoginButton.addSubview(paycoLoginLabel)
    
    scrollView.addSubview(adImageView)
    
    let margin: CGFloat = 15
    topView.topAnchor.constraint(equalTo: topAnchor).isActive = true
    topView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    topView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    topView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    topViewBottomLine.bottomAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
    topViewBottomLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    topViewBottomLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    topViewBottomLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    loginLabel.topAnchor.constraint(equalTo: topAnchor, constant: margin).isActive = true
    loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    loginLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    loginLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
    
    dismissButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -margin).isActive = true
    dismissButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    dismissButton.centerYAnchor.constraint(equalTo: loginLabel.centerYAnchor).isActive = true
    
    idTitleButton.topAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
    idTitleButton.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    idTitleButton.trailingAnchor.constraint(equalTo: bTitleButton.leadingAnchor).isActive = true
    idTitleButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
    idTitleButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    bTitleButton.topAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
    bTitleButton.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    bTitleButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    indicatorBar.topAnchor.constraint(equalTo: idTitleButton.bottomAnchor).isActive = true
    indicatorBar.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
    indicatorBar.heightAnchor.constraint(equalToConstant: 3).isActive = true
    
    scrollView.topAnchor.constraint(equalTo: indicatorBar.bottomAnchor).isActive = true
    scrollView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    scrollView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    scrollView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    
    idTextField.topAnchor.constraint(equalTo: indicatorBar.bottomAnchor, constant: 20).isActive = true
    idTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    idTextField.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.7).isActive = true
    idTextField.heightAnchor.constraint(equalToConstant: 33).isActive = true
    
    passwordTextField.topAnchor.constraint(equalTo: idTextField.bottomAnchor, constant: 5).isActive = true
    passwordTextField.leadingAnchor.constraint(equalTo: idTextField.leadingAnchor).isActive = true
    passwordTextField.widthAnchor.constraint(equalTo: idTextField.widthAnchor).isActive = true
    passwordTextField.heightAnchor.constraint(equalTo: idTextField.heightAnchor).isActive = true
    
    loginButton.topAnchor.constraint(equalTo: idTextField.topAnchor).isActive = true
    loginButton.leadingAnchor.constraint(equalTo: idTextField.trailingAnchor, constant: 15).isActive = true
    loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
    loginButton.bottomAnchor.constraint(equalTo: passwordTextField.bottomAnchor).isActive = true
    
    checkButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10).isActive = true
    checkButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
    checkButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
    checkButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    
    checkButtonLabel.leadingAnchor.constraint(equalTo: checkButton.trailingAnchor).isActive = true
    checkButtonLabel.centerYAnchor.constraint(equalTo: checkButton.centerYAnchor).isActive = true
    checkButtonLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
    
    simpleLoginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 15).isActive = true
    simpleLoginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
    simpleLoginButton.widthAnchor.constraint(equalToConstant: 130).isActive = true
    simpleLoginButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
    
    middleView.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 10).isActive = true
    middleView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    middleView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    middleView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    topLabel.topAnchor.constraint(equalTo: middleView.topAnchor).isActive = true
    topLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    topLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    topLabel.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    bottomLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    bottomLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    bottomLabel.bottomAnchor.constraint(equalTo: middleView.bottomAnchor).isActive = true
    bottomLabel.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    idPwFindButton.topAnchor.constraint(equalTo: middleView.topAnchor).isActive = true
    idPwFindButton.leadingAnchor.constraint(equalTo: middleView.leadingAnchor).isActive = true
    idPwFindButton.bottomAnchor.constraint(equalTo: middleView.bottomAnchor).isActive = true
    idPwFindButton.widthAnchor.constraint(equalTo: middleView.widthAnchor, multiplier: 0.33).isActive = true
    
    registerButton.topAnchor.constraint(equalTo: idPwFindButton.topAnchor).isActive = true
    registerButton.leadingAnchor.constraint(equalTo: idPwFindButton.trailingAnchor).isActive = true
    registerButton.bottomAnchor.constraint(equalTo: idPwFindButton.bottomAnchor).isActive = true
    registerButton.widthAnchor.constraint(equalTo: middleView.widthAnchor, multiplier: 0.34).isActive = true
    
    restoreButton.topAnchor.constraint(equalTo: idPwFindButton.topAnchor).isActive = true
    restoreButton.leadingAnchor.constraint(equalTo: registerButton.trailingAnchor).isActive = true
    restoreButton.bottomAnchor.constraint(equalTo: idPwFindButton.bottomAnchor).isActive = true
    restoreButton.widthAnchor.constraint(equalTo: idPwFindButton.widthAnchor).isActive = true
    
    separateFirstLabel.topAnchor.constraint(equalTo: middleView.topAnchor, constant: 20).isActive = true
    separateFirstLabel.trailingAnchor.constraint(equalTo: idPwFindButton.trailingAnchor).isActive = true
    separateFirstLabel.bottomAnchor.constraint(equalTo: middleView.bottomAnchor, constant: -20).isActive = true
    separateFirstLabel.widthAnchor.constraint(equalToConstant: 1).isActive = true
    
    separateSecondLabel.topAnchor.constraint(equalTo: middleView.topAnchor, constant: 20).isActive = true
    separateSecondLabel.trailingAnchor.constraint(equalTo: registerButton.trailingAnchor).isActive = true
    separateSecondLabel.bottomAnchor.constraint(equalTo: middleView.bottomAnchor, constant: -20).isActive = true
    separateSecondLabel.widthAnchor.constraint(equalToConstant: 1).isActive = true
    
    simpleLoginLabel.topAnchor.constraint(equalTo: middleView.bottomAnchor, constant: 10).isActive = true
    simpleLoginLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
    simpleLoginLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
    simpleLoginLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
    
    paycoLoginButton.topAnchor.constraint(equalTo: simpleLoginLabel.bottomAnchor, constant: 10).isActive = true
    paycoLoginButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    paycoLoginButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8).isActive = true
    paycoLoginButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
    
    paycoLoginLabel.leadingAnchor.constraint(equalTo: paycoLoginButton.centerXAnchor, constant: 30).isActive = true
    paycoLoginLabel.centerYAnchor.constraint(equalTo: paycoLoginButton.centerYAnchor).isActive = true
    paycoLoginLabel.centerXAnchor.constraint(equalTo: paycoLoginButton.centerXAnchor).isActive = true
    paycoLoginLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
    paycoLoginLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
    
    
    adImageView.topAnchor.constraint(equalTo: paycoLoginButton.bottomAnchor, constant: 25).isActive = true
    adImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    adImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.7).isActive = true
    adImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3).isActive = true
    
    
  }
  
  @objc func didTapCheckButton(_ sender: UIButton) {
    sender.isSelected.toggle()
  }
  
  @objc func didTapTitleButton(_ sender: UIButton) {

    if !sender.isSelected {
      idTitleButton.isSelected.toggle()
      bTitleButton.isSelected.toggle()
    }
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
