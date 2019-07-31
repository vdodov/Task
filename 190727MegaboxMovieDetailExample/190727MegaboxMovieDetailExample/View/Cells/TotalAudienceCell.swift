//
//  TotalAudienceCell.swift
//  190727MegaboxMovieDetailExample
//
//  Created by 차수연 on 29/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class TotalAudienceCell: UITableViewCell {
  static let identifier = "TotalAudienceCell"
  
  let totalCountLable: UILabel = {
    let label = UILabel()
    label.text = "2,299,222명"
    label.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let graphImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    setupAudienceCell()
  }
  
  func setupAudienceCell() {
    addSubview(totalCountLable)
    totalCountLable.topAnchor.constraint(equalTo: topAnchor, constant: 30).isActive = true
    totalCountLable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    
    addSubview(graphImageView)
    graphImageView.topAnchor.constraint(equalTo: totalCountLable.bottomAnchor, constant: 10).isActive = true
    graphImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
    graphImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
    graphImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
    graphImageView.heightAnchor.constraint(equalToConstant: 130).isActive = true
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
}
