//
//  MoviePostCollectionCell.swift
//  190727MegaboxMovieDetailExample
//
//  Created by 차수연 on 30/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class MoviePostCollectionCell: UICollectionViewCell {
  static let identifier = "MoviePostCollectionCell"
  
  let commentView: UIView = {
    let view = UIView()
    view.layer.borderWidth = 1
    view.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  let userIdLabel: UILabel = {
    let label = UILabel()
    label.text = "afdafa"
    label.font = UIFont.systemFont(ofSize: 11)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let timeLabel: UILabel = {
    let label = UILabel()
    label.text = "16시간전"
    label.font = UIFont.systemFont(ofSize: 11, weight: .semibold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let movieTitleLabel: UILabel = {
    let label = UILabel()
    label.text = "스파이더맨"
    label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 11, weight: .semibold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let commentLabel: UILabel = {
    let label = UILabel()
    label.text = "스파이더맨.스파이더맨스파이더맨스파이더맨스파이더맨스파이더맨스파이더맨..스파이더맨.스파이더맨스파이더맨"
    label.font = UIFont.systemFont(ofSize: 11)
    label.numberOfLines = 0
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let postImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = #imageLiteral(resourceName: "a")
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    setupCollectionCell()
  }
  
  func setupCollectionCell() {
    addSubview(commentView)
    commentView.addSubview(userIdLabel)
    commentView.addSubview(timeLabel)
    commentView.addSubview(postImageView)
    commentView.addSubview(movieTitleLabel)
    commentView.addSubview(commentLabel)
    
    commentView.topAnchor.constraint(equalTo: topAnchor).isActive = true
    commentView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    commentView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    commentView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    
    userIdLabel.topAnchor.constraint(equalTo: commentView.topAnchor, constant: 10).isActive = true
    userIdLabel.leadingAnchor.constraint(equalTo: commentView.leadingAnchor, constant: 10).isActive = true
    
    timeLabel.topAnchor.constraint(equalTo: commentView.topAnchor, constant: 10).isActive = true
    timeLabel.trailingAnchor.constraint(equalTo: postImageView.leadingAnchor, constant: -10).isActive = true
    
    postImageView.topAnchor.constraint(equalTo: commentView.topAnchor).isActive = true
    postImageView.trailingAnchor.constraint(equalTo: commentView.trailingAnchor).isActive = true
    postImageView.bottomAnchor.constraint(equalTo: commentView.bottomAnchor).isActive = true
    postImageView.widthAnchor.constraint(equalTo: commentView.widthAnchor, multiplier: 0.4).isActive = true
    
    movieTitleLabel.topAnchor.constraint(equalTo: userIdLabel.bottomAnchor, constant: 5).isActive = true
    movieTitleLabel.leadingAnchor.constraint(equalTo: commentView.leadingAnchor, constant: 10).isActive = true
    
    commentLabel.topAnchor.constraint(equalTo: movieTitleLabel.bottomAnchor, constant: 5).isActive = true
    commentLabel.leadingAnchor.constraint(equalTo: commentView.leadingAnchor, constant: 10).isActive = true
    commentLabel.trailingAnchor.constraint(equalTo: postImageView.leadingAnchor, constant: -10).isActive = true
    
    
    
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}
