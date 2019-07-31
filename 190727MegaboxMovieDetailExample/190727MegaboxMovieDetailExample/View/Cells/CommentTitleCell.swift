//
//  CommentTitleCell.swift
//  190727MegaboxMovieDetailExample
//
//  Created by 차수연 on 29/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class CommentTitleCell: UITableViewCell {
  
  let titleLabel: UILabel = {
    let label = UILabel()
    label.text = "한줄평(1,594개)"
    label.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let writeButton: UIButton = {
    let button = UIButton()
    button.setTitle("작성하기", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
    button.contentEdgeInsets = UIEdgeInsets(top: 5, left: 7, bottom: 5, right: 7)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
    button.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    button.layer.borderWidth = 1
    button.layer.cornerRadius = 5
    button.setImage(#imageLiteral(resourceName: "img_post_write"), for: .normal)
    button.contentHorizontalAlignment = .right
    button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    setupCommentTitleCell()
  }
  
  func setupCommentTitleCell() {
    addSubview(titleLabel)
    titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 30).isActive = true
    titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    
    addSubview(writeButton)
    writeButton.topAnchor.constraint(equalTo: titleLabel.topAnchor).isActive = true
    writeButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
    writeButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
    writeButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    writeButton.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
}
