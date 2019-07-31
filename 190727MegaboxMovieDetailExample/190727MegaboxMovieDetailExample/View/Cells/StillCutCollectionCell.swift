//
//  StillCutImageCell.swift
//  190727MegaboxMovieDetailExample
//
//  Created by 차수연 on 30/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class StillCutCollectionCell: UICollectionViewCell {
  static let identifier = "StillCutImageCell"
  
  let stillCutImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = #imageLiteral(resourceName: "stillCut")
    imageView.contentMode = .scaleAspectFit
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    setupStillImageCell()
  }
  
  func setupStillImageCell() {
    contentView.addSubview(stillCutImageView)
    stillCutImageView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
    stillCutImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
    stillCutImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
    stillCutImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
