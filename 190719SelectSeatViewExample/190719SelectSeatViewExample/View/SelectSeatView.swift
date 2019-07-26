//
//  SelectSeatView.swift
//  190719SelectSeatViewExample
//
//  Created by 차수연 on 19/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

protocol SelectSeatViewDelegate {
  func touchUpPlusButton(_ sender: UIButton)
  
  func touchUpFinishButton(_ sender: UIButton)
}

class SelectSeatView: UIView {
  
  var delegate: SelectSeatViewDelegate?
  
  var totalCount: Int = 0
  
  var adultCount: Int = 0 {
    didSet {
      totalAdultCountLabel.text = "\(adultCount)"
      adultCountLabel.text = "\(adultCount)"
    }
  }
  
  var teenagerCount: Int = 0 {
    didSet {
      totalTeenagerCountLabel.text = "\(teenagerCount)"
      teenagerCountLabel.text = "\(teenagerCount)"
    }
  }
  
  var childCount: Int = 0 {
    didSet {
      totalChildCountLabel.text = "\(childCount)"
      childCountLabel.text = "\(childCount)"
    }
  }
  
  var seniorCount: Int = 0 {
    didSet {
      totalSeniorCountLabel.text = "\(seniorCount)"
      seniorCountLabel.text = "\(seniorCount)"
    }
  }
  
  private let totalCountView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()

  private let topViewBottomLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let previousButton: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("이전", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let dismissButton: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("닫기", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let totalAdultCountLabel: UILabel = {
    let label = UILabel()
    label.text = "0"
    label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 19, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let adultTitleLabel: UILabel = {
    let label = UILabel()
    label.text = "일반"
    label.textColor = #colorLiteral(red: 0.2199999988, green: 0.2199999988, blue: 0.2199999988, alpha: 1)
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 13)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let totalTeenagerCountLabel: UILabel = {
    let label = UILabel()
    label.text = "0"
    label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 19, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let teenagerTitleLabel: UILabel = {
    let label = UILabel()
    label.text = "청소년"
    label.textColor = #colorLiteral(red: 0.2199999988, green: 0.2199999988, blue: 0.2199999988, alpha: 1)
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 13)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let totalChildCountLabel: UILabel = {
    let label = UILabel()
    label.text = "0"
    label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 19, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let childTitleLabel: UILabel = {
    let label = UILabel()
    label.text = "어린이"
    label.textColor = #colorLiteral(red: 0.2199999988, green: 0.2199999988, blue: 0.2199999988, alpha: 1)
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 13)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  
  private let totalSeniorCountLabel: UILabel = {
    let label = UILabel()
    label.text = "0"
    label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 19, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let seniorTitleLabel: UILabel = {
    let label = UILabel()
    label.text = "우대"
    label.textColor = #colorLiteral(red: 0.2199999988, green: 0.2199999988, blue: 0.2199999988, alpha: 1)
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 13)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  //일반
  private let adultView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  private let adultLabel: UILabel = {
    let label = UILabel()
    label.text = "일반"
    label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()

  private let adultCountLabel: UILabel = {
    let label = UILabel()
    label.text = "0"
    label.textColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()

  private let adultPlusButton: UIButton = {
    let button = UIButton(type: .custom)
    button.setImage(#imageLiteral(resourceName: "seatselect_plus"), for: .normal)
    button.tag = 0
    button.addTarget(self, action: #selector(didTapPlusButton(_:)), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()

  private let adultMinus: UIButton = {
    let button = UIButton(type: .custom)
    button.setImage(#imageLiteral(resourceName: "seatselect_minus"), for: .normal)
    button.tag = 1
    button.addTarget(self, action: #selector(didTapMinusButton(_:)), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()

  private let adultViewBottomLabel: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  //청소년
  private let teenagerView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  private let teenagerLabel: UILabel = {
    let label = UILabel()
    label.text = "청소년"
    label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let teenagerCountLabel: UILabel = {
    let label = UILabel()
    label.text = "0"
    label.textColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let teenagerPlusButton: UIButton = {
    let button = UIButton(type: .custom)
    button.setImage(#imageLiteral(resourceName: "seatselect_plus"), for: .normal)
    button.tag = 2
    button.addTarget(self, action: #selector(didTapPlusButton(_:)), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let teenagerMinus: UIButton = {
    let button = UIButton(type: .custom)
    button.setImage(#imageLiteral(resourceName: "seatselect_minus"), for: .normal)
    button.tag = 3
    button.addTarget(self, action: #selector(didTapMinusButton(_:)), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let teenagerViewBottomLabel: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  //어린이
  private let childView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  private let childLabel: UILabel = {
    let label = UILabel()
    label.text = "어린이"
    label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let childCountLabel: UILabel = {
    let label = UILabel()
    label.text = "0"
    label.textColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let childPlusButton: UIButton = {
    let button = UIButton(type: .custom)
    button.setImage(#imageLiteral(resourceName: "seatselect_plus"), for: .normal)
    button.tag = 4
    button.addTarget(self, action: #selector(didTapPlusButton(_:)), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let childMinus: UIButton = {
    let button = UIButton(type: .custom)
    button.setImage(#imageLiteral(resourceName: "seatselect_minus"), for: .normal)
    button.tag = 5
    button.addTarget(self, action: #selector(didTapMinusButton(_:)), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let childViewBottomLabel: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()

  //우대
  private let seniorView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  private let seniorLabel: UILabel = {
    let label = UILabel()
    label.text = "우대"
    label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let seniorCountLabel: UILabel = {
    let label = UILabel()
    label.text = "0"
    label.textColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let seniorPlusButton: UIButton = {
    let button = UIButton(type: .custom)
    button.setImage(#imageLiteral(resourceName: "seatselect_plus"), for: .normal)
    button.tag = 6
    button.addTarget(self, action: #selector(didTapPlusButton(_:)), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let seniorMinus: UIButton = {
    let button = UIButton(type: .custom)
    button.setImage(#imageLiteral(resourceName: "seatselect_minus"), for: .normal)
    button.tag = 7
    button.addTarget(self, action: #selector(didTapMinusButton(_:)), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let seniorViewBottomLabel: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let finishButton: UIButton = {
    let button = UIButton()
    button.setTitle("선택완료 (최대 8명 선택 가능)", for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
    button.addTarget(self, action: #selector(didTapFinishButton(_:)), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  

  override init(frame: CGRect) {
    super.init(frame: frame)
  
    setupSelectSeatView()
  }
  
  @objc func didTapFinishButton(_ sender: UIButton) {
    guard totalCount > 0 else { delegate?.touchUpFinishButton(sender); return }

  }
  
  @objc func didTapPlusButton(_ sender: UIButton) {
    
    switch sender.tag {
    //어른
    case 0:
      guard totalCount < 8 else { delegate?.touchUpPlusButton(sender); return }
      adultCount += 1
      totalCount += 1
    //청소년
    case 2:
      guard totalCount < 8 else { delegate?.touchUpPlusButton(sender); return }
      teenagerCount += 1
      totalCount += 1
    //어린이
    case 4:
      guard totalCount < 8 else { delegate?.touchUpPlusButton(sender); return }
      childCount += 1
      totalCount += 1
    //우대
    case 6:
      guard totalCount < 8 else { delegate?.touchUpPlusButton(sender); return }
      seniorCount += 1
      totalCount += 1
    default:
      break
    }
    
  }
  
  @objc func didTapMinusButton(_ sender: UIButton) {
    switch sender.tag {
      //어른
    case 1:
      guard adultCount > 0 else { return }
      adultCount -= 1
      totalCount -= 1
      //청소년
    case 3:
      guard teenagerCount > 0 else { return }
      teenagerCount -= 1
      totalCount -= 1
      //어린이
    case 5:
      guard childCount > 0 else { return }
      childCount -= 1
      totalCount -= 1
      //우대
    case 7:
      guard seniorCount > 0 else { return }
      seniorCount -= 1
      totalCount -= 1
    default:
      break
    }
  }
  
  
  private func setupSelectSeatView() {
    addSubview(totalCountView)
    totalCountView.topAnchor.constraint(equalTo: topAnchor).isActive = true
    totalCountView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    totalCountView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    totalCountView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    totalCountView.addSubview(topViewBottomLine)
    topViewBottomLine.leadingAnchor.constraint(equalTo: totalCountView.leadingAnchor).isActive = true
    topViewBottomLine.trailingAnchor.constraint(equalTo: totalCountView.trailingAnchor).isActive = true
    topViewBottomLine.bottomAnchor.constraint(equalTo: totalCountView.bottomAnchor).isActive = true
    topViewBottomLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    totalCountView.addSubview(previousButton)
    previousButton.topAnchor.constraint(equalTo: totalCountView.topAnchor).isActive = true
    previousButton.leadingAnchor.constraint(equalTo: totalCountView.leadingAnchor).isActive = true
    previousButton.bottomAnchor.constraint(equalTo: totalCountView.bottomAnchor).isActive = true
    previousButton.widthAnchor.constraint(equalTo: totalCountView.widthAnchor, multiplier: 0.1).isActive = true
    
    totalCountView.addSubview(dismissButton)
    dismissButton.topAnchor.constraint(equalTo: totalCountView.topAnchor).isActive = true
    dismissButton.trailingAnchor.constraint(equalTo: totalCountView.trailingAnchor).isActive = true
    dismissButton.bottomAnchor.constraint(equalTo: totalCountView.bottomAnchor).isActive = true
    dismissButton.widthAnchor.constraint(equalTo: totalCountView.widthAnchor, multiplier: 0.1).isActive = true
    
    totalCountView.addSubview(totalAdultCountLabel)
    totalAdultCountLabel.topAnchor.constraint(equalTo: totalCountView.topAnchor).isActive = true
    totalAdultCountLabel.leadingAnchor.constraint(equalTo: previousButton.trailingAnchor).isActive = true
    totalAdultCountLabel.heightAnchor.constraint(equalTo: totalCountView.heightAnchor, multiplier: 0.6).isActive = true
    
    totalCountView.addSubview(adultTitleLabel)
    adultTitleLabel.topAnchor.constraint(equalTo: totalAdultCountLabel.bottomAnchor).isActive = true
    adultTitleLabel.leadingAnchor.constraint(equalTo: totalAdultCountLabel.leadingAnchor).isActive = true
    adultTitleLabel.bottomAnchor.constraint(equalTo: totalCountView.bottomAnchor).isActive = true
    
    totalCountView.addSubview(totalTeenagerCountLabel)
    totalTeenagerCountLabel.topAnchor.constraint(equalTo: totalCountView.topAnchor).isActive = true
    totalTeenagerCountLabel.leadingAnchor.constraint(equalTo: totalAdultCountLabel.trailingAnchor).isActive = true
    totalTeenagerCountLabel.widthAnchor.constraint(equalTo: totalAdultCountLabel.widthAnchor).isActive = true
    totalTeenagerCountLabel.heightAnchor.constraint(equalTo: totalAdultCountLabel.heightAnchor).isActive = true
    
    totalCountView.addSubview(teenagerTitleLabel)
    teenagerTitleLabel.topAnchor.constraint(equalTo: totalTeenagerCountLabel.bottomAnchor).isActive = true
    teenagerTitleLabel.leadingAnchor.constraint(equalTo: adultTitleLabel.trailingAnchor).isActive = true
    teenagerTitleLabel.bottomAnchor.constraint(equalTo: adultTitleLabel.bottomAnchor).isActive = true
    teenagerTitleLabel.widthAnchor.constraint(equalTo: adultTitleLabel.widthAnchor).isActive = true
    
    totalCountView.addSubview(totalChildCountLabel)
    totalChildCountLabel.topAnchor.constraint(equalTo: totalCountView.topAnchor).isActive = true
    totalChildCountLabel.leadingAnchor.constraint(equalTo: totalTeenagerCountLabel.trailingAnchor).isActive = true
    totalChildCountLabel.widthAnchor.constraint(equalTo: totalAdultCountLabel.widthAnchor).isActive = true
    totalChildCountLabel.heightAnchor.constraint(equalTo: totalAdultCountLabel.heightAnchor).isActive = true
    
    totalCountView.addSubview(childTitleLabel)
    childTitleLabel.topAnchor.constraint(equalTo: totalTeenagerCountLabel.bottomAnchor).isActive = true
    childTitleLabel.leadingAnchor.constraint(equalTo: teenagerTitleLabel.trailingAnchor).isActive = true
    childTitleLabel.bottomAnchor.constraint(equalTo: adultTitleLabel.bottomAnchor).isActive = true
    childTitleLabel.widthAnchor.constraint(equalTo: adultTitleLabel.widthAnchor).isActive = true
    
    totalCountView.addSubview(totalSeniorCountLabel)
    totalSeniorCountLabel.topAnchor.constraint(equalTo: totalCountView.topAnchor).isActive = true
    totalSeniorCountLabel.leadingAnchor.constraint(equalTo: totalChildCountLabel.trailingAnchor).isActive = true
    totalSeniorCountLabel.trailingAnchor.constraint(equalTo: dismissButton.leadingAnchor).isActive = true
    totalSeniorCountLabel.widthAnchor.constraint(equalTo: totalAdultCountLabel.widthAnchor).isActive = true
    totalSeniorCountLabel.heightAnchor.constraint(equalTo: totalAdultCountLabel.heightAnchor).isActive = true
    
    totalCountView.addSubview(seniorTitleLabel)
    seniorTitleLabel.topAnchor.constraint(equalTo: totalSeniorCountLabel.bottomAnchor).isActive = true
    seniorTitleLabel.leadingAnchor.constraint(equalTo: childTitleLabel.trailingAnchor).isActive = true
    seniorTitleLabel.trailingAnchor.constraint(equalTo: totalSeniorCountLabel.trailingAnchor).isActive = true
    seniorTitleLabel.bottomAnchor.constraint(equalTo: adultTitleLabel.bottomAnchor).isActive = true
    seniorTitleLabel.widthAnchor.constraint(equalTo: adultTitleLabel.widthAnchor).isActive = true
    
    //어른
    addSubview(adultView)
    adultView.topAnchor.constraint(equalTo: topViewBottomLine.bottomAnchor).isActive = true
    adultView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    adultView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    adultView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    adultView.addSubview(adultViewBottomLabel)
    adultViewBottomLabel.leadingAnchor.constraint(equalTo: adultView.leadingAnchor).isActive = true
    adultViewBottomLabel.trailingAnchor.constraint(equalTo: adultView.trailingAnchor).isActive = true
    adultViewBottomLabel.bottomAnchor.constraint(equalTo: adultView.bottomAnchor).isActive = true
    adultViewBottomLabel.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    adultView.addSubview(adultLabel)
    adultLabel.topAnchor.constraint(equalTo: adultView.topAnchor, constant: 15).isActive = true
    adultLabel.leadingAnchor.constraint(equalTo: adultView.leadingAnchor, constant: 15).isActive = true
    adultLabel.centerYAnchor.constraint(equalTo: adultView.centerYAnchor).isActive = true
    
    adultView.addSubview(adultPlusButton)
    adultPlusButton.trailingAnchor.constraint(equalTo: adultView.trailingAnchor, constant: -10).isActive = true
    adultPlusButton.centerYAnchor.constraint(equalTo: adultView.centerYAnchor).isActive = true
    adultPlusButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
    adultPlusButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    adultView.addSubview(adultMinus)
    adultMinus.trailingAnchor.constraint(equalTo: adultPlusButton.leadingAnchor, constant: -3).isActive = true
    adultMinus.centerYAnchor.constraint(equalTo: adultView.centerYAnchor).isActive = true
    adultMinus.widthAnchor.constraint(equalToConstant: 40).isActive = true
    adultMinus.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    adultView.addSubview(adultCountLabel)
    adultCountLabel.trailingAnchor.constraint(equalTo: adultMinus.leadingAnchor, constant: -15).isActive = true
    adultCountLabel.centerYAnchor.constraint(equalTo: adultView.centerYAnchor).isActive = true
    
    //청소년
    addSubview(teenagerView)
    teenagerView.topAnchor.constraint(equalTo: adultViewBottomLabel.bottomAnchor).isActive = true
    teenagerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    teenagerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    teenagerView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    teenagerView.addSubview(teenagerViewBottomLabel)
    teenagerViewBottomLabel.leadingAnchor.constraint(equalTo: teenagerView.leadingAnchor).isActive = true
    teenagerViewBottomLabel.trailingAnchor.constraint(equalTo: teenagerView.trailingAnchor).isActive = true
    teenagerViewBottomLabel.bottomAnchor.constraint(equalTo: teenagerView.bottomAnchor).isActive = true
    teenagerViewBottomLabel.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    teenagerView.addSubview(teenagerLabel)
    teenagerLabel.topAnchor.constraint(equalTo: teenagerView.topAnchor, constant: 15).isActive = true
    teenagerLabel.leadingAnchor.constraint(equalTo: teenagerView.leadingAnchor, constant: 15).isActive = true
    teenagerLabel.centerYAnchor.constraint(equalTo: teenagerView.centerYAnchor).isActive = true
    
    teenagerView.addSubview(teenagerPlusButton)
    teenagerPlusButton.trailingAnchor.constraint(equalTo: teenagerView.trailingAnchor, constant: -10).isActive = true
    teenagerPlusButton.centerYAnchor.constraint(equalTo: teenagerView.centerYAnchor).isActive = true
    teenagerPlusButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
    teenagerPlusButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    teenagerView.addSubview(teenagerMinus)
    teenagerMinus.trailingAnchor.constraint(equalTo: teenagerPlusButton.leadingAnchor, constant: -3).isActive = true
    teenagerMinus.centerYAnchor.constraint(equalTo: teenagerView.centerYAnchor).isActive = true
    teenagerMinus.widthAnchor.constraint(equalToConstant: 40).isActive = true
    teenagerMinus.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    teenagerView.addSubview(teenagerCountLabel)
    teenagerCountLabel.trailingAnchor.constraint(equalTo: teenagerMinus.leadingAnchor, constant: -15).isActive = true
    teenagerCountLabel.centerYAnchor.constraint(equalTo: teenagerMinus.centerYAnchor).isActive = true
    
    //어린이
    addSubview(childView)
    childView.topAnchor.constraint(equalTo: teenagerViewBottomLabel.bottomAnchor).isActive = true
    childView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    childView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    childView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    childView.addSubview(childViewBottomLabel)
    childViewBottomLabel.leadingAnchor.constraint(equalTo: childView.leadingAnchor).isActive = true
    childViewBottomLabel.trailingAnchor.constraint(equalTo: childView.trailingAnchor).isActive = true
    childViewBottomLabel.bottomAnchor.constraint(equalTo: childView.bottomAnchor).isActive = true
    childViewBottomLabel.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    childView.addSubview(childLabel)
    childLabel.topAnchor.constraint(equalTo: childView.topAnchor, constant: 15).isActive = true
    childLabel.leadingAnchor.constraint(equalTo: childView.leadingAnchor, constant: 15).isActive = true
    childLabel.centerYAnchor.constraint(equalTo: childView.centerYAnchor).isActive = true
    
    childView.addSubview(childPlusButton)
    childPlusButton.trailingAnchor.constraint(equalTo: childView.trailingAnchor, constant: -10).isActive = true
    childPlusButton.centerYAnchor.constraint(equalTo: childView.centerYAnchor).isActive = true
    childPlusButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
    childPlusButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    childView.addSubview(childMinus)
    childMinus.trailingAnchor.constraint(equalTo: childPlusButton.leadingAnchor, constant: -3).isActive = true
    childMinus.centerYAnchor.constraint(equalTo: childView.centerYAnchor).isActive = true
    childMinus.widthAnchor.constraint(equalToConstant: 40).isActive = true
    childMinus.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    childView.addSubview(childCountLabel)
    childCountLabel.trailingAnchor.constraint(equalTo: childMinus.leadingAnchor, constant: -15).isActive = true
    childCountLabel.centerYAnchor.constraint(equalTo: childMinus.centerYAnchor).isActive = true
    
    //우대
    addSubview(seniorView)
    seniorView.topAnchor.constraint(equalTo: childViewBottomLabel.bottomAnchor).isActive = true
    seniorView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    seniorView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    seniorView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    seniorView.addSubview(seniorViewBottomLabel)
    seniorViewBottomLabel.leadingAnchor.constraint(equalTo: seniorView.leadingAnchor).isActive = true
    seniorViewBottomLabel.trailingAnchor.constraint(equalTo: seniorView.trailingAnchor).isActive = true
    seniorViewBottomLabel.bottomAnchor.constraint(equalTo: seniorView.bottomAnchor).isActive = true
    seniorViewBottomLabel.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    seniorView.addSubview(seniorLabel)
    seniorLabel.topAnchor.constraint(equalTo: seniorView.topAnchor, constant: 15).isActive = true
    seniorLabel.leadingAnchor.constraint(equalTo: seniorView.leadingAnchor, constant: 15).isActive = true
    seniorLabel.centerYAnchor.constraint(equalTo: seniorView.centerYAnchor).isActive = true
    
    seniorView.addSubview(seniorPlusButton)
    seniorPlusButton.trailingAnchor.constraint(equalTo: seniorView.trailingAnchor, constant: -10).isActive = true
    seniorPlusButton.centerYAnchor.constraint(equalTo: seniorView.centerYAnchor).isActive = true
    seniorPlusButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
    seniorPlusButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    seniorView.addSubview(seniorMinus)
    seniorMinus.trailingAnchor.constraint(equalTo: seniorPlusButton.leadingAnchor, constant: -3).isActive = true
    seniorMinus.centerYAnchor.constraint(equalTo: seniorView.centerYAnchor).isActive = true
    seniorMinus.widthAnchor.constraint(equalToConstant: 40).isActive = true
    seniorMinus.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    seniorView.addSubview(seniorCountLabel)
    seniorCountLabel.trailingAnchor.constraint(equalTo: seniorMinus.leadingAnchor, constant: -15).isActive = true
    seniorCountLabel.centerYAnchor.constraint(equalTo: seniorMinus.centerYAnchor).isActive = true
    
    
    addSubview(finishButton)
    finishButton.topAnchor.constraint(equalTo: seniorViewBottomLabel.bottomAnchor).isActive = true
    finishButton.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    finishButton.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    finishButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
}
