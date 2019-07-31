//
//  SummaryCell.swift
//  190727MegaboxMovieDetailExample
//
//  Created by 차수연 on 29/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class SummaryCell: UITableViewCell {
  
//  var addButtonAction: (() -> ())?
  
  let summaryTitleLabel: UILabel = {
    let label = UILabel()
    label.text = "줄거리"
    label.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let summaryLabel: UILabel = {
    let label = UILabel()
    label.text = """
    모든 것이 다시 시작된다!\n
    ‘엔드게임’ 이후 변화된 세상,\n
    스파이더맨 ‘피터 파커’는 학교 친구들과 유럽 여행을 떠나게 된다.\n
    그런 그의 앞에 ‘닉 퓨리’가 등장해 도움을 요청하고\n
    정체불명의 조력자 ‘미스테리오’까지 합류하게 되면서\n
    전 세계를 위협하는 새로운 빌런 ‘엘리멘탈 크리쳐스’와\n
    맞서야만 하는 상황에 놓이게 되는데…\n
    """
    label.numberOfLines = 0
    label.font = UIFont.systemFont(ofSize: 11)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let addButton: UIButton = {
    let button = UIButton()
    button.setTitle("더보기", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0.2199999988, green: 0.2199999988, blue: 0.2199999988, alpha: 1), for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 11)
    button.addTarget(self, action: #selector(didTapAddButton(_:)), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    setupSummeartCell()
  }
  
  @objc func didTapAddButton(_ sender: UIButton) {
    print("didTapAddButton")
//    addButtonAction?()
  }
  
  func setupSummeartCell() {
    addSubview(summaryTitleLabel)
    summaryTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 30).isActive = true
    summaryTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    
    addSubview(summaryLabel)
    summaryLabel.topAnchor.constraint(equalTo: summaryTitleLabel.bottomAnchor, constant: 20).isActive = true
    summaryLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    
    
    addSubview(addButton)
    addButton.topAnchor.constraint(equalTo: summaryLabel.bottomAnchor, constant: 30).isActive = true
    addButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    addButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30).isActive = true
  }
  
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
}
