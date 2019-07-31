//
//  CommentCell.swift
//  190727MegaboxMovieDetailExample
//
//  Created by 차수연 on 29/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
  
  let userImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = #imageLiteral(resourceName: "default_icon_profile_image")
    imageView.layer.borderWidth = 1
    imageView.layer.borderColor = #colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1)
    imageView.clipsToBounds = true
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  let userIdLable: UILabel = {
    let label = UILabel()
    label.text = "vdodov"
    label.font = UIFont.systemFont(ofSize: 11, weight: .semibold)
    label.textColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let timeLabel: UILabel = {
    let label = UILabel()
    label.text = "4시간전"
    label.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 11)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let starImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.backgroundColor = .red
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()

  let firstSeparateImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = #imageLiteral(resourceName: "abc_list_selector_disabled_holo_light.9")
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  let commentLabel: UILabel = {
    let label = UILabel()
    label.text = "ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ"
    label.numberOfLines = 0
    label.font = UIFont.systemFont(ofSize: 15)
    label.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let goodButton: UIButton = {
    let button = UIButton()
    button.setTitle("추천", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0.3098039216, green: 0.7137254902, blue: 0.7607843137, alpha: 1), for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
    button.setImage(#imageLiteral(resourceName: "btn_post_like_sel"), for: .normal)
    button.contentHorizontalAlignment = .right
    button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let secondSeparateImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = #imageLiteral(resourceName: "abc_list_selector_disabled_holo_light.9")
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  let badButton: UIButton = {
    let button = UIButton()
    button.setTitle("신고하기", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
    button.setImage(#imageLiteral(resourceName: "lock"), for: .normal)
    button.contentHorizontalAlignment = .right
    button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let bottomLineLabel: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.9461453046, green: 0.9461453046, blue: 0.9461453046, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    setupCommentCell()
  }
  
  override func draw(_ rect: CGRect) {
    super.draw(rect)
    
    userImageView.layer.cornerRadius = userImageView.frame.width / 2
  }
  
  func setupCommentCell() {
    addSubview(userImageView)
    userImageView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
    userImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    userImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
    userImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    addSubview(userIdLable)
    userIdLable.topAnchor.constraint(equalTo: userImageView.topAnchor).isActive = true
    userIdLable.leadingAnchor.constraint(equalTo: userImageView.trailingAnchor, constant: 10).isActive = true
    
    addSubview(timeLabel)
    timeLabel.topAnchor.constraint(equalTo: userIdLable.bottomAnchor, constant: 10).isActive = true
    timeLabel.leadingAnchor.constraint(equalTo: userImageView.trailingAnchor, constant: 10).isActive = true
    
    addSubview(starImageView)
    starImageView.topAnchor.constraint(equalTo: timeLabel.topAnchor).isActive = true
    starImageView.leadingAnchor.constraint(equalTo: timeLabel.trailingAnchor).isActive = true
    starImageView.widthAnchor.constraint(equalToConstant: 80).isActive = true
    starImageView.heightAnchor.constraint(equalToConstant: 20).isActive = true
    
    addSubview(firstSeparateImageView)
    firstSeparateImageView.topAnchor.constraint(equalTo: timeLabel.topAnchor).isActive = true
    firstSeparateImageView.leadingAnchor.constraint(equalTo: starImageView.trailingAnchor).isActive = true
    firstSeparateImageView.widthAnchor.constraint(equalToConstant: 3).isActive = true
    firstSeparateImageView.heightAnchor.constraint(equalToConstant: 10).isActive = true
    
    addSubview(commentLabel)
    commentLabel.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 10).isActive = true
    commentLabel.leadingAnchor.constraint(equalTo: timeLabel.leadingAnchor).isActive = true
    commentLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
    
    addSubview(goodButton)
    goodButton.topAnchor.constraint(equalTo: commentLabel.bottomAnchor, constant: 10).isActive = true
    goodButton.leadingAnchor.constraint(equalTo: commentLabel.leadingAnchor).isActive = true
    goodButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
    goodButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
    
    addSubview(secondSeparateImageView)
    secondSeparateImageView.topAnchor.constraint(equalTo: goodButton.topAnchor, constant: 5).isActive = true
    secondSeparateImageView.leadingAnchor.constraint(equalTo: goodButton.trailingAnchor, constant: 5).isActive = true
    secondSeparateImageView.widthAnchor.constraint(equalToConstant: 3).isActive = true
    secondSeparateImageView.heightAnchor.constraint(equalToConstant: 10).isActive = true
    
    addSubview(badButton)
    badButton.topAnchor.constraint(equalTo: commentLabel.bottomAnchor, constant: 10).isActive = true
    badButton.leadingAnchor.constraint(equalTo: secondSeparateImageView.trailingAnchor).isActive = true
    badButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
    badButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
    
    addSubview(bottomLineLabel)
    bottomLineLabel.topAnchor.constraint(equalTo: badButton.bottomAnchor, constant: 40).isActive = true
    bottomLineLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    bottomLineLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
    bottomLineLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
    bottomLineLabel.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    
    
    
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}
