//
//  ContentTableViewCell.swift
//  190904CustomFooterExample
//
//  Created by 차수연 on 04/09/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class ContentTableViewCell: UITableViewCell {
  static let identifier = "ContentTableViewCell"
  
  private let label: UILabel = {
    let label = UILabel()
    label.text = "Content"
    label.textAlignment = .center
    label.backgroundColor = #colorLiteral(red: 0.9564038212, green: 0.9564038212, blue: 0.9564038212, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    autoLayout()
  }
  
  private func autoLayout() {
    addSubview(label)
    
    label.topAnchor.constraint(equalTo: topAnchor).isActive = true
    label.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    label.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    label.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    label.heightAnchor.constraint(equalToConstant: 1500).isActive = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
