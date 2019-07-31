//
//  PreViewCell.swift
//  190727MegaboxMovieDetailExample
//
//  Created by 차수연 on 29/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class PreViewCell: UITableViewCell {
  
  let preViewImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = #imageLiteral(resourceName: "preview")
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  let playImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = #imageLiteral(resourceName: "btn_box_play_nor")
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  let preViewTitleLabel: UILabel = {
    let label = UILabel()
    label.text = "스파이더맨: 파 프로 홈 티저예고편"
    label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    setupPriViewCell()
  }
  
  func setupPriViewCell() {
    
    addSubview(preViewImageView)
    preViewImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
    preViewImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    preViewImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3).isActive = true
    preViewImageView.heightAnchor.constraint(equalTo: preViewImageView.widthAnchor, multiplier: 0.6).isActive = true
    preViewImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
    
    addSubview(playImageView)
    playImageView.centerXAnchor.constraint(equalTo: preViewImageView.centerXAnchor).isActive = true
    playImageView.centerYAnchor.constraint(equalTo: preViewImageView.centerYAnchor).isActive = true
    playImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
    playImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
    
    addSubview(preViewTitleLabel)
    preViewTitleLabel.topAnchor.constraint(equalTo: preViewImageView.topAnchor).isActive = true
    preViewTitleLabel.leadingAnchor.constraint(equalTo: preViewImageView.trailingAnchor, constant: 5).isActive = true
    preViewTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
