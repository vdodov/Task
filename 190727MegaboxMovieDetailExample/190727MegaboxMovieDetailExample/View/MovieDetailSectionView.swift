//
//  MovieDetailSectionView.swift
//  190727MegaboxMovieDetailExample
//
//  Created by 차수연 on 29/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

protocol MovieDetailSectionViewDelegate: class {
  func didTap(isStatus: Bool)
}

class MovieDetailSectionView: UIView {
  
  weak var delegate: MovieDetailSectionViewDelegate?
  
  let infoButton: UIButton = {
    let button = UIButton()
    button.setTitle("영화정보", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0.2392156863, green: 0.1215686275, blue: 0.5568627451, alpha: 1), for: .normal)
    button.isSelected = true
    button.addTarget(self, action: #selector(didTapInfoButton(_:)), for: .touchUpInside)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 13)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let commentButton: UIButton = {
    let button = UIButton()
    button.setTitle("한줄평", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0.2199999988, green: 0.2199999988, blue: 0.2199999988, alpha: 1), for: .normal)
    button.isSelected = false
    button.addTarget(self, action: #selector(didTapInfoButton(_:)), for: .touchUpInside)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 13)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  
  let bottomLabel: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.9563174175, green: 0.9563174175, blue: 0.9563174175, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  

  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = .white
    setupSectionView()
  }
  
  @objc func didTapInfoButton(_ sender: UIButton) {
    
    switch sender {
    case infoButton:
      infoButton.setTitleColor(#colorLiteral(red: 0.2392156863, green: 0.1215686275, blue: 0.5568627451, alpha: 1), for: .normal)
      infoButton.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .bold)
      commentButton.setTitleColor(#colorLiteral(red: 0.2199999988, green: 0.2199999988, blue: 0.2199999988, alpha: 1), for: .normal)
      delegate?.didTap(isStatus: true)
      
    case  commentButton:
      infoButton.setTitleColor(#colorLiteral(red: 0.2199999988, green: 0.2199999988, blue: 0.2199999988, alpha: 1), for: .normal)
      commentButton.setTitleColor(#colorLiteral(red: 0.2392156863, green: 0.1215686275, blue: 0.5568627451, alpha: 1), for: .normal)
      commentButton.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .bold)
      delegate?.didTap(isStatus: false)
      
    default:
      break
    }
    
    
  }
  
  func setupSectionView() {
    addSubview(infoButton)
    infoButton.topAnchor.constraint(equalTo: topAnchor).isActive = true
    infoButton.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    infoButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    infoButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
    
    addSubview(commentButton)
    commentButton.topAnchor.constraint(equalTo: topAnchor).isActive = true
    commentButton.leadingAnchor.constraint(equalTo: infoButton.trailingAnchor).isActive = true
    commentButton.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    commentButton.widthAnchor.constraint(equalTo: infoButton.widthAnchor).isActive = true
    commentButton.heightAnchor.constraint(equalTo: infoButton.heightAnchor).isActive = true
    
    addSubview(bottomLabel)
//    bottomLabel.topAnchor.constraint(equalTo: infoButton.bottomAnchor).isActive = true
    bottomLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    bottomLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    bottomLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    bottomLabel.heightAnchor.constraint(equalToConstant: 2).isActive = true
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
