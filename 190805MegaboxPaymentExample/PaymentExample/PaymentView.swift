//
//  PaymentView.swift
//  PaymentExample
//
//  Created by 차수연 on 06/08/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class PaymentView: UIView {
 
  private let menuTitleView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  private let menuTitleLabel: UILabel = {
    let label = UILabel()
    label.text = "결제"
    label.textColor = #colorLiteral(red: 0.2199999988, green: 0.2199999988, blue: 0.2199999988, alpha: 1)
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let titleLabelBottomLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let menuTitleDismissButton: UIButton = {
    let button = UIButton()
    button.setImage(#imageLiteral(resourceName: "option_arrow_right_gray"), for: .normal)
    button.addTarget(self, action: #selector(touchUpDismissButton), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let menuTitleRefreshButton: UIButton = {
    let button = UIButton()
    button.setImage(#imageLiteral(resourceName: "option_arrow_right_gray"), for: .normal)
    button.addTarget(self, action: #selector(touchUpRefreshButton(_:)), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()

  private let paymentScrollView: UIScrollView = {
    let scrollView = UIScrollView()
    scrollView.translatesAutoresizingMaskIntoConstraints = false
    return scrollView
  }()
  
  private let topView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 0.284535408, green: 0.2828498483, blue: 0.2858348787, alpha: 1)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  private let movieGradeImage: UIImageView = {
    let imageView = UIImageView()
    imageView.backgroundColor = #colorLiteral(red: 0, green: 0.01932368055, blue: 1, alpha: 1)
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  private let movieTitleLabel: UILabel = {
    let label = UILabel()
    label.labelSetup(text: "movieTitleLabel", color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), fontSize: 13, alignment: .left)
    label.font = UIFont.systemFont(ofSize: 13, weight: .heavy)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let movieTypeLabel: UILabel = {
    let label = UILabel()
    label.labelSetup(text: "movieTypeLabel", color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), fontSize: 11, alignment: .left)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let movieThumbnailImage: UIImageView = {
    let imageView = UIImageView()
    imageView.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  private let dateLabel: UILabel = {
    let label = UILabel()
    label.labelSetup(text: "dateLabel", color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), fontSize: 10, alignment: .left)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let screenLabel: UILabel = {
    let label = UILabel()
    label.labelSetup(text: "screenLabel", color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), fontSize: 10, alignment: .left)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let personLabel: UILabel = {
    let label = UILabel()
    label.labelSetup(text: "personLabel", color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), fontSize: 10, alignment: .left)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let seatLabel: UILabel = {
    let label = UILabel()
    label.labelSetup(text: "seatLabel", color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), fontSize: 10, alignment: .left)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let bottomView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 0.8865981102, green: 0.8813280463, blue: 0.8906494379, alpha: 1)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  private let firstLabel: UILabel = {
    let label = UILabel()
    label.text = "1 할인수단 선택"
    label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    label.backgroundColor = .clear
    label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let pointButton: UIButton = {
    let button = UIButton()
    button.setTitle("관람권/VIP쿠폰/멤버십 포인트", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
    button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    button.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    button.layer.borderWidth = 0.3
    button.setImage(#imageLiteral(resourceName: "option_arrow_right_gray"), for: .normal)
    button.contentHorizontalAlignment = .left
    button.imageEdgeInsets = UIEdgeInsets(top: -10, left: (UIScreen.main.bounds.maxX) - 40, bottom: -10, right: 0)
    button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .light)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let discountButton: UIButton = {
    let button = UIButton()
    button.setTitle("할인수단", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
    button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    button.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    button.layer.borderWidth = 0.3
    button.setImage(#imageLiteral(resourceName: "option_arrow_right_gray"), for: .normal)
    button.contentHorizontalAlignment = .left
    button.imageEdgeInsets = UIEdgeInsets(top: -10, left: (UIScreen.main.bounds.maxX) - 40, bottom: -10, right: 0)
    button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .light)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let secondLabel: UILabel = {
    let label = UILabel()
    label.text = "2 결제수단 선택"
    label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let phoneButton: UIButton = {
    let button = UIButton()
    button.setTitle("휴대폰", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
    button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    button.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    button.layer.borderWidth = 0.3
    button.setImage(#imageLiteral(resourceName: "option_arrow_right_gray"), for: .normal)
    button.contentHorizontalAlignment = .left
    button.imageEdgeInsets = UIEdgeInsets(top: -10, left: (UIScreen.main.bounds.maxX) - 40, bottom: -10, right: 0)
    button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .light)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let creditCardButton: UIButton = {
    let button = UIButton()
    button.setTitle("신용/체크카드", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
    button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    button.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    button.layer.borderWidth = 0.3
    button.setImage(#imageLiteral(resourceName: "option_arrow_right_gray"), for: .normal)
    button.contentHorizontalAlignment = .left
    button.imageEdgeInsets = UIEdgeInsets(top: -10, left: (UIScreen.main.bounds.maxX) - 40, bottom: -10, right: 0)
    button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .light)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let kakaoPayButton: UIButton = {
    let button = UIButton()
    button.setTitle("카카오페이", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
    button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    button.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    button.layer.borderWidth = 0.3
    button.setImage(#imageLiteral(resourceName: "option_arrow_right_gray"), for: .normal)
    button.contentHorizontalAlignment = .left
    button.imageEdgeInsets = UIEdgeInsets(top: -10, left: (UIScreen.main.bounds.maxX) - 40, bottom: -10, right: 0)
    button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .light)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let paycoButton: UIButton = {
    let button = UIButton()
    button.setTitle("페이코", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
    button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    button.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    button.layer.borderWidth = 0.3
    button.setImage(#imageLiteral(resourceName: "option_arrow_right_gray"), for: .normal)
    button.contentHorizontalAlignment = .left
    button.imageEdgeInsets = UIEdgeInsets(top: -10, left: (UIScreen.main.bounds.maxX) - 40, bottom: -10, right: 0)
    button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .light)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let totalMoneyView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 0.6795246005, green: 0.6754873991, blue: 0.6826294065, alpha: 1)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  private let totalMoneyLeftLabel: UILabel = {
    let label = UILabel()
    label.text = "총 결제 금액"
    label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
    label.alignmentRect(forFrame: CGRect(x: 10, y: 0, width: 0, height: 0))
    label.backgroundColor = #colorLiteral(red: 0.6795246005, green: 0.6754873991, blue: 0.6826294065, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let totalMoneyRightLabel: UILabel = {
    let label = UILabel()
    label.text = "0원"
    label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    label.textAlignment = .right
    label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
    label.backgroundColor = #colorLiteral(red: 0.6795246005, green: 0.6754873991, blue: 0.6826294065, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let firstTotalMoneyDetailLabel: UILabel = {
    let label = UILabel()
    label.text = "할인수단/관람권 (-)"
    label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
    label.textColor = #colorLiteral(red: 0.4606742263, green: 0.4628105164, blue: 0.4680169821, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let firstTotalMoneyCountLabel: UILabel = {
    let label = UILabel()
    label.text = "0원"
    label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
    label.textColor = #colorLiteral(red: 0.4606742263, green: 0.4628105164, blue: 0.4680169821, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let secondTotalMoneyDetailLabel: UILabel = {
    let label = UILabel()
    label.text = "일반결제 (-)"
    label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
    label.textColor = #colorLiteral(red: 0.4606742263, green: 0.4628105164, blue: 0.4680169821, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let secondTotalMoneyCountLabel: UILabel = {
    let label = UILabel()
    label.text = "0원"
    label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
    label.textColor = #colorLiteral(red: 0.4606742263, green: 0.4628105164, blue: 0.4680169821, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let remainMoneyView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 0.6795246005, green: 0.6754873991, blue: 0.6826294065, alpha: 1)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  private let remainMoneyLeftLabel: UILabel = {
    let label = UILabel()
    label.text = "남은금액"
    label.textColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
    label.alignmentRect(forFrame: CGRect(x: 10, y: 0, width: 0, height: 0))
    label.backgroundColor = #colorLiteral(red: 0.6795246005, green: 0.6754873991, blue: 0.6826294065, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let remainMoneyRightLabel: UILabel = {
    let label = UILabel()
    label.text = "0원"
    label.textColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
    label.textAlignment = .right
    label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
    label.backgroundColor = #colorLiteral(red: 0.6795246005, green: 0.6754873991, blue: 0.6826294065, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let okCashbagView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  private let okCashbagLeftLabel: UILabel = {
    let label = UILabel()
    label.text = "OK 캐쉬백 적립"
    label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let okCashbagRightLabel: UILabel = {
    let label = UILabel()
    label.text = "적립대상금 : 0 원"
    label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    label.textAlignment = .left
    label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let okCashbagExplainLabel: UILabel = {
    let label = UILabel()
    label.text = "직접 받으실 ok캐쉬백 카드번호 입력 후 인증 버튼을 눌러주세요."
    label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
    label.textColor = #colorLiteral(red: 0.4606742263, green: 0.4628105164, blue: 0.4680169821, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let okCashbagOneNumTextField: UITextField = {
    let textField = UITextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    return textField
  }()
  
  private let okCashbagTwoNumTextField: UITextField = {
    let textField = UITextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    return textField
  }()
  
  private let okCashbagThreeNumTextField: UITextField = {
    let textField = UITextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    return textField
  }()
  
  private let okCashbagFourNumTextField: UITextField = {
    let textField = UITextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    return textField
  }()
  
  private let authButton: UIButton = {
    let button = UIButton()
    button.setTitle("인증", for: .normal)
    button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
    button.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let adImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.backgroundColor = #colorLiteral(red: 0, green: 0.5628422499, blue: 0.3188166618, alpha: 1)
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  private let paymentButton: UIButton = {
    let button = UIButton()
    button.setTitle("결제하기", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    setupProperties()
  }
  
  @objc private func touchUpRefreshButton(_ sender: UIButton) {
    
  }
  
  @objc private func touchUpDismissButton() {
    
  }
  
  private func setupProperties() {
    let margin: CGFloat = 10
 
    addSubview(menuTitleView)
    menuTitleView.topAnchor.constraint(equalTo: topAnchor).isActive = true
    menuTitleView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    menuTitleView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    menuTitleView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    menuTitleView.addSubview(menuTitleLabel)
    menuTitleLabel.topAnchor.constraint(equalTo: menuTitleView.topAnchor, constant: 10).isActive = true
    menuTitleLabel.bottomAnchor.constraint(equalTo: menuTitleView.bottomAnchor, constant: -10).isActive = true
    menuTitleLabel.centerXAnchor.constraint(equalTo: menuTitleView.centerXAnchor).isActive = true
    menuTitleLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true

    menuTitleView.addSubview(titleLabelBottomLine)
    titleLabelBottomLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    titleLabelBottomLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    titleLabelBottomLine.bottomAnchor.constraint(equalTo: menuTitleView.bottomAnchor).isActive = true
    titleLabelBottomLine.heightAnchor.constraint(equalToConstant: 1).isActive = true


    menuTitleView.addSubview(menuTitleDismissButton)
    menuTitleDismissButton.topAnchor.constraint(equalTo: menuTitleView.topAnchor).isActive = true
    menuTitleDismissButton.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    menuTitleDismissButton.bottomAnchor.constraint(equalTo: menuTitleView.bottomAnchor).isActive = true
    menuTitleDismissButton.widthAnchor.constraint(equalTo: menuTitleView.widthAnchor, multiplier: 0.1).isActive = true

    menuTitleView.addSubview(menuTitleRefreshButton)
    menuTitleRefreshButton.topAnchor.constraint(equalTo: menuTitleView.topAnchor).isActive = true
    menuTitleRefreshButton.trailingAnchor.constraint(equalTo: menuTitleView.trailingAnchor).isActive = true
    menuTitleRefreshButton.bottomAnchor.constraint(equalTo: menuTitleView.bottomAnchor).isActive = true
    menuTitleRefreshButton.widthAnchor.constraint(equalTo: menuTitleView.widthAnchor, multiplier: 0.1).isActive = true

    addSubview(paymentScrollView)
    paymentScrollView.topAnchor.constraint(equalTo: menuTitleView.bottomAnchor).isActive
      = true
    paymentScrollView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    paymentScrollView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    paymentScrollView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    
    
    paymentScrollView.addSubview(topView)
    topView.topAnchor.constraint(equalTo: paymentScrollView.topAnchor).isActive = true
    topView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    topView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    topView.heightAnchor.constraint(equalToConstant: 150).isActive = true

    topView.addSubview(movieGradeImage)
    movieGradeImage.topAnchor.constraint(equalTo: topView.topAnchor, constant: margin).isActive = true
    movieGradeImage.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: margin).isActive = true
    movieGradeImage.widthAnchor.constraint(equalToConstant: 25).isActive = true
    movieGradeImage.heightAnchor.constraint(equalToConstant: 25).isActive = true
    
    topView.addSubview(movieTitleLabel)
    movieTitleLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: margin).isActive = true
    movieTitleLabel.leadingAnchor.constraint(equalTo: movieGradeImage.trailingAnchor, constant: margin).isActive = true
    
    topView.addSubview(movieTypeLabel)
    movieTypeLabel.topAnchor.constraint(equalTo: movieTitleLabel.bottomAnchor, constant: margin / 2).isActive = true
    movieTypeLabel.leadingAnchor.constraint(equalTo: movieGradeImage.trailingAnchor, constant: margin).isActive = true
    
    topView.addSubview(movieThumbnailImage)
    let thumbnailWidth: CGFloat = (640 * 80) / 916
    let thumbnailHeihgt: CGFloat = (thumbnailWidth * 916) / 640
    
    movieThumbnailImage.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: margin).isActive = true
    movieThumbnailImage.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: -margin - 5).isActive = true
    movieThumbnailImage.widthAnchor.constraint(equalToConstant: thumbnailWidth).isActive = true
    movieThumbnailImage.heightAnchor.constraint(equalToConstant: thumbnailHeihgt).isActive = true
    
    topView.addSubview(dateLabel)
    dateLabel.topAnchor.constraint(equalTo: movieThumbnailImage.topAnchor, constant: margin).isActive = true
    dateLabel.leadingAnchor.constraint(equalTo: movieThumbnailImage.trailingAnchor, constant: margin).isActive = true
    
    topView.addSubview(screenLabel)
    screenLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: margin / 2).isActive = true
    screenLabel.leadingAnchor.constraint(equalTo: movieThumbnailImage.trailingAnchor, constant: margin).isActive = true
    
    topView.addSubview(personLabel)
    personLabel.topAnchor.constraint(equalTo: screenLabel.bottomAnchor, constant: margin / 2).isActive = true
    personLabel.leadingAnchor.constraint(equalTo: movieThumbnailImage.trailingAnchor, constant: margin).isActive = true
    
    topView.addSubview(seatLabel)
    seatLabel.topAnchor.constraint(equalTo: personLabel.bottomAnchor, constant: margin / 2).isActive = true
    seatLabel.leadingAnchor.constraint(equalTo: movieThumbnailImage.trailingAnchor, constant: margin).isActive = true
    
    paymentScrollView.addSubview(bottomView)
    bottomView.topAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
    bottomView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    bottomView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    bottomView.bottomAnchor.constraint(equalTo: paymentScrollView.bottomAnchor).isActive = true
    

    bottomView.addSubview(firstLabel)
    firstLabel.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: margin * 2).isActive = true
    firstLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: margin).isActive = true

    bottomView.addSubview(pointButton)
    pointButton.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: margin).isActive = true
    pointButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: margin).isActive = true
    pointButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -margin).isActive = true
    pointButton.heightAnchor.constraint(equalToConstant: 40).isActive = true

    
    bottomView.addSubview(discountButton)
    discountButton.topAnchor.constraint(equalTo: pointButton.bottomAnchor, constant: -0.3).isActive = true
    discountButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: margin).isActive = true
    discountButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -margin).isActive = true
    discountButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    bottomView.addSubview(secondLabel)
    secondLabel.topAnchor.constraint(equalTo: discountButton.bottomAnchor, constant: margin).isActive = true
    secondLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: margin).isActive = true

    bottomView.addSubview(phoneButton)
    phoneButton.topAnchor.constraint(equalTo: secondLabel.bottomAnchor,constant: margin).isActive = true
    phoneButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: margin).isActive = true
    phoneButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -margin).isActive = true
    phoneButton.heightAnchor.constraint(equalToConstant: 40).isActive = true

    bottomView.addSubview(creditCardButton)
    creditCardButton.topAnchor.constraint(equalTo: phoneButton.bottomAnchor, constant: -0.3).isActive = true
    creditCardButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: margin).isActive = true
    creditCardButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -margin).isActive = true
    creditCardButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    bottomView.addSubview(kakaoPayButton)
    kakaoPayButton.topAnchor.constraint(equalTo: creditCardButton.bottomAnchor, constant: -0.3).isActive = true
    kakaoPayButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: margin).isActive = true
    kakaoPayButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -margin).isActive = true
    kakaoPayButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    bottomView.addSubview(paycoButton)
    paycoButton.topAnchor.constraint(equalTo: kakaoPayButton.bottomAnchor, constant: -0.3).isActive = true
    paycoButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: margin).isActive = true
    paycoButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -margin).isActive = true
    paycoButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    bottomView.addSubview(totalMoneyView)
    totalMoneyView.topAnchor.constraint(equalTo: paycoButton.bottomAnchor, constant: margin * 2).isActive = true
    totalMoneyView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    totalMoneyView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    totalMoneyView.heightAnchor.constraint(equalToConstant: 50).isActive = true

    totalMoneyView.addSubview(totalMoneyLeftLabel)
    totalMoneyLeftLabel.topAnchor.constraint(equalTo: paycoButton.bottomAnchor, constant: margin * 2).isActive = true
    totalMoneyLeftLabel.leadingAnchor.constraint(equalTo: totalMoneyView.leadingAnchor, constant: margin).isActive = true
    totalMoneyLeftLabel.centerYAnchor.constraint(equalTo: totalMoneyView.centerYAnchor).isActive = true

    totalMoneyView.addSubview(totalMoneyRightLabel)
    totalMoneyRightLabel.topAnchor.constraint(equalTo: paycoButton.bottomAnchor, constant: margin * 2).isActive = true
    totalMoneyRightLabel.trailingAnchor.constraint(equalTo: totalMoneyView.trailingAnchor, constant: -margin).isActive = true
    totalMoneyRightLabel.centerYAnchor.constraint(equalTo: totalMoneyView.centerYAnchor).isActive = true

    bottomView.addSubview(firstTotalMoneyDetailLabel)
    firstTotalMoneyDetailLabel.topAnchor.constraint(equalTo: totalMoneyView.bottomAnchor, constant: margin * 2).isActive = true
    firstTotalMoneyDetailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: margin).isActive = true

    bottomView.addSubview(firstTotalMoneyCountLabel)
    firstTotalMoneyCountLabel.topAnchor.constraint(equalTo: totalMoneyView.bottomAnchor, constant: margin * 2).isActive = true
    firstTotalMoneyCountLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -margin).isActive = true

    bottomView.addSubview(secondTotalMoneyDetailLabel)
    secondTotalMoneyDetailLabel.topAnchor.constraint(equalTo: firstTotalMoneyDetailLabel.bottomAnchor, constant: margin / 2).isActive = true
    secondTotalMoneyDetailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: margin).isActive = true
    
    bottomView.addSubview(secondTotalMoneyCountLabel)
    secondTotalMoneyCountLabel.topAnchor.constraint(equalTo: firstTotalMoneyCountLabel.bottomAnchor, constant: margin / 2).isActive = true
    secondTotalMoneyCountLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -margin).isActive = true

    bottomView.addSubview(remainMoneyView)
    remainMoneyView.topAnchor.constraint(equalTo: secondTotalMoneyDetailLabel.bottomAnchor, constant: margin * 2).isActive = true
    remainMoneyView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    remainMoneyView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    remainMoneyView.heightAnchor.constraint(equalToConstant: 50).isActive = true

    remainMoneyView.addSubview(remainMoneyLeftLabel)
    remainMoneyLeftLabel.leadingAnchor.constraint(equalTo: remainMoneyView.leadingAnchor, constant: margin).isActive = true
    remainMoneyLeftLabel.centerYAnchor.constraint(equalTo: remainMoneyView.centerYAnchor).isActive = true

    remainMoneyView.addSubview(remainMoneyRightLabel)
    remainMoneyRightLabel.trailingAnchor.constraint(equalTo: remainMoneyView.trailingAnchor, constant: -margin).isActive = true
    remainMoneyRightLabel.centerYAnchor.constraint(equalTo: remainMoneyView.centerYAnchor).isActive = true

    bottomView.addSubview(okCashbagView)
    okCashbagView.topAnchor.constraint(equalTo: remainMoneyView.bottomAnchor).isActive = true
    okCashbagView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    okCashbagView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    okCashbagView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    

    okCashbagView.addSubview(okCashbagLeftLabel)
    okCashbagLeftLabel.topAnchor.constraint(equalTo: okCashbagView.topAnchor, constant: margin).isActive = true
    okCashbagLeftLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: margin).isActive = true

    okCashbagView.addSubview(okCashbagRightLabel)
    okCashbagRightLabel.topAnchor.constraint(equalTo: okCashbagView.topAnchor, constant: margin).isActive = true
    okCashbagRightLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -margin).isActive = true

    okCashbagView.addSubview(okCashbagExplainLabel)
    okCashbagExplainLabel.topAnchor.constraint(equalTo: okCashbagLeftLabel.bottomAnchor, constant: margin).isActive = true
    okCashbagExplainLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: margin).isActive = true
    
    
    //    okCashbagView.addSubview(okCashbagOneNumTextField)
    //    okCashbagView.addSubview(okCashbagTwoNumTextField)
    //    okCashbagView.addSubview(okCashbagThreeNumTextField)
    //    okCashbagView.addSubview(okCashbagFourNumTextField)
    //    okCashbagView.addSubview(authButton)
    
    
    bottomView.addSubview(adImageView)
    adImageView.topAnchor.constraint(equalTo: okCashbagView.bottomAnchor, constant: margin).isActive = true
    adImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    adImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    adImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    
    bottomView.addSubview(paymentButton)
    paymentButton.topAnchor.constraint(equalTo: adImageView.bottomAnchor).isActive = true
    paymentButton.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    paymentButton.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    paymentButton.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor).isActive = true
    paymentButton.heightAnchor.constraint(equalToConstant: 70).isActive = true
    
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
