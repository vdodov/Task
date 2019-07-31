//
//  PreViewTitleCell.swift
//  190727MegaboxMovieDetailExample
//
//  Created by 차수연 on 29/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class PreViewTitleCell: UITableViewCell {
  
  let titleLabel: UILabel = {
    let label = UILabel()
    label.text = "예고편"
    label.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    setupPreViewTitleCell()
  }
  
  func setupPreViewTitleCell() {
    addSubview(titleLabel)
    titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 30).isActive = true
    titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
}
