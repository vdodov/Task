//
//  AdCell.swift
//  190727MegaboxMovieDetailExample
//
//  Created by 차수연 on 29/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class AdCell: UITableViewCell {
  
  let topLabel: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.9563174175, green: 0.9563174175, blue: 0.9563174175, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let adImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = #imageLiteral(resourceName: "ad")
    imageView.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
    imageView.contentMode = .scaleAspectFit
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  let bottomLabel: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.9563174175, green: 0.9563174175, blue: 0.9563174175, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)

    setupAdCell()
  }
  
  func setupAdCell() {
    addSubview(topLabel)
    topLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
    topLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    topLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    topLabel.heightAnchor.constraint(equalToConstant: 2).isActive = true
    
    addSubview(adImageView)
    adImageView.topAnchor.constraint(equalTo: topLabel.bottomAnchor).isActive = true
    adImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    adImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    adImageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
    
    addSubview(bottomLabel)
    bottomLabel.topAnchor.constraint(equalTo: adImageView.bottomAnchor).isActive = true
    bottomLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    bottomLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    bottomLabel.heightAnchor.constraint(equalToConstant: 2).isActive = true
    bottomLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
