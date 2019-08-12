//
//  MenuTitleCell.swift
//  MovieCategoryExample
//
//  Created by 차수연 on 05/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class MenuTitleCell: UICollectionViewCell {
  static let identifier = "MenuTitleCell"
  
  // MARK: - Properties
  
  let label: UILabel = {
    let label = UILabel()
    label.text = "Text"
    label.font = UIFont.systemFont(ofSize: 13)
    label.textColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  override var isSelected: Bool {
    didSet{
      label.textColor = isSelected ? #colorLiteral(red: 0.2392156863, green: 0.1215686275, blue: 0.5568627451, alpha: 1) : .black
    }
  }
  
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    addSubview(label)
    label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  
}
