//
//  MyPageOneContentCell.swift
//  190711MegaboxMypageExample
//
//  Created by 차수연 on 12/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class MyPageOneContentCell: UITableViewCell {
  
  let contentViewTopLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.6588235294, green: 0.6588235294, blue: 0.6588235294, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  //
  let firstView: UIView = {
    let view = UIView()
    view.backgroundColor = .white
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  let firstContentLabel: UILabel = {
    let label = UILabel()
    label.text = "text"
    label.textColor = #colorLiteral(red: 0.3254901961, green: 0.3411764706, blue: 0.3803921569, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 16, weight: .light)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let firstCountLabel: UILabel = {
    let label = UILabel()
    label.text = "0"
    label.textAlignment = .right
    label.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
    label.textColor = #colorLiteral(red: 0.2392156863, green: 0.1215686275, blue: 0.5568627451, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let firstContentImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = #imageLiteral(resourceName: "btn_slide_blut")
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  let firstContentViewBottomLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.6588235294, green: 0.6588235294, blue: 0.6588235294, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
 
  
  //////////
  let separatView: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    setupContentCell()
  }
  
  
  private func setupContentCell() {
    addSubview(contentViewTopLine)
    
    addSubview(firstView)
    firstView.addSubview(firstContentLabel)
    firstView.addSubview(firstCountLabel)
    firstView.addSubview(firstContentImageView)
    addSubview(firstContentViewBottomLine)
    
   
    
    addSubview(separatView)
    
    
    contentViewTopLine.topAnchor.constraint(equalTo: topAnchor).isActive = true
    contentViewTopLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    contentViewTopLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    contentViewTopLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    
    //
    
    firstView.topAnchor.constraint(equalTo: contentViewTopLine.bottomAnchor).isActive = true
    firstView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    firstView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    firstView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    
    firstContentLabel.topAnchor.constraint(equalTo: firstView.topAnchor).isActive = true
    firstContentLabel.leadingAnchor.constraint(equalTo: firstView.leadingAnchor, constant: 10).isActive = true
    firstContentLabel.bottomAnchor.constraint(equalTo: firstView.bottomAnchor).isActive = true
    
    firstCountLabel.topAnchor.constraint(equalTo: firstView.topAnchor).isActive = true
    firstCountLabel.leadingAnchor.constraint(equalTo: firstContentLabel.trailingAnchor).isActive = true
    firstCountLabel.bottomAnchor.constraint(equalTo: firstView.bottomAnchor).isActive = true
    firstCountLabel.widthAnchor.constraint(equalTo: firstView.widthAnchor, multiplier: 0.1).isActive = true
    
    
    firstContentImageView.topAnchor.constraint(equalTo: firstView.topAnchor).isActive = true
    firstContentImageView.leadingAnchor.constraint(equalTo: firstCountLabel.trailingAnchor).isActive = true
    firstContentImageView.trailingAnchor.constraint(equalTo: firstView.trailingAnchor).isActive = true
    firstContentImageView.bottomAnchor.constraint(equalTo: firstView.bottomAnchor).isActive = true
    firstContentImageView.widthAnchor.constraint(equalTo: firstView.widthAnchor, multiplier: 0.1).isActive = true
    
    
    firstContentViewBottomLine.topAnchor.constraint(equalTo: firstView.bottomAnchor).isActive = true
    firstContentViewBottomLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    firstContentViewBottomLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    firstContentViewBottomLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    
    
    //////
    separatView.topAnchor.constraint(equalTo: firstContentViewBottomLine.bottomAnchor).isActive = true
    separatView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    separatView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    separatView.heightAnchor.constraint(equalToConstant: 10).isActive = true
    separatView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
