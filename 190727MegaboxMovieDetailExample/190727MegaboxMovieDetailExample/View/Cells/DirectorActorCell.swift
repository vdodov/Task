//
//  directorActorCell.swift
//  190727MegaboxMovieDetailExample
//
//  Created by 차수연 on 29/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class DirectorActorCell: UITableViewCell {
  
  let titleLabel: UILabel = {
    let label = UILabel()
    label.text = "감독/출연"
    label.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let directorTitleLabel: UILabel = {
    let label = UILabel()
    label.text = "감독"
    label.font = UIFont.systemFont(ofSize: 11, weight: .semibold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let directorLabel: UILabel = {
    let label = UILabel()
    label.text = "존 왓츠"
    label.font = UIFont.systemFont(ofSize: 11)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let actorTitleLabel: UILabel = {
    let label = UILabel()
    label.text = "출연"
    label.font = UIFont.systemFont(ofSize: 11, weight: .semibold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let actorLabel: UILabel = {
    let label = UILabel()
    label.text = "톰 홀랜드, 사무엘 L. 잭슨, 젠다야 콜맨, 코비 스멀더스, 존 파브로, 마리사 토메이, 제이크 질렌할, 제이콥 배덜런"
    label.numberOfLines = 0
    label.font = UIFont.systemFont(ofSize: 11)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    setupDirectorActorCell()
  }
  
  func setupDirectorActorCell() {
    addSubview(titleLabel)
    titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 30).isActive = true
    titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    
    addSubview(directorTitleLabel)
    directorTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
    directorTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    
    addSubview(directorLabel)
    directorLabel.topAnchor.constraint(equalTo: directorTitleLabel.topAnchor).isActive = true
    directorLabel.leadingAnchor.constraint(equalTo: directorTitleLabel.trailingAnchor, constant: 5).isActive = true
    
    addSubview(actorTitleLabel)
    actorTitleLabel.topAnchor.constraint(equalTo: directorTitleLabel.bottomAnchor, constant: 10).isActive = true
    actorTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    actorTitleLabel.trailingAnchor.constraint(equalTo: directorTitleLabel.trailingAnchor).isActive = true
    
    addSubview(actorLabel)
    actorLabel.topAnchor.constraint(equalTo: actorTitleLabel.topAnchor).isActive = true
    actorLabel.leadingAnchor.constraint(equalTo: actorTitleLabel.trailingAnchor, constant: 5).isActive = true
    actorLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
    actorLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -40).isActive = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
