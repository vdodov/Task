//
//  CustomCollectionViewCell.swift
//  190603APIMoviePractice
//
//  Created by 차수연 on 06/06/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
  static let identifier = "CustomCollectionCell"
  
  
  let thumbnailImage = UIImageView()
  let grade = UIImageView()
  
  let title = UILabel()
  
  let secondLabels = UILabel()
  
  let date = UILabel()
  
  var stack = UIStackView()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    configure()
    addSubview()
    autoLayout()
  }
  
  private func configure() {
    stack = UIStackView(arrangedSubviews: [title, secondLabels, date])
    
    if grade.image == UIImage(named: "0") {
      grade.image = UIImage(named: "all")
    }else if grade.image == UIImage(named: "12") {
      grade.image = UIImage(named: "12")
    }else if grade.image == UIImage(named: "15") {
      grade.image = UIImage(named: "15")
    }else if grade.image == UIImage(named: "19") {
      grade.image = UIImage(named: "19")
    }
    
    stack.axis = .vertical
    stack.alignment = .leading
    stack.distribution = .equalSpacing
    
  }
  
  private func addSubview() {
    contentView.addSubview(thumbnailImage)
    thumbnailImage.addSubview(grade)
    
    contentView.addSubview(stack)
  }
  
  private func autoLayout() {
    let margin: CGFloat = 5
    thumbnailImage.translatesAutoresizingMaskIntoConstraints = false
    thumbnailImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: margin).isActive = true
    thumbnailImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: margin).isActive = true
    thumbnailImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -margin).isActive = true
    thumbnailImage.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.6).isActive = true
    
    grade.translatesAutoresizingMaskIntoConstraints = false
    grade.topAnchor.constraint(equalTo: thumbnailImage.topAnchor, constant: margin).isActive = true
    grade.trailingAnchor.constraint(equalTo: thumbnailImage.trailingAnchor, constant: -margin).isActive = true
    grade.widthAnchor.constraint(equalToConstant: 30).isActive = true
    grade.heightAnchor.constraint(equalToConstant: 30).isActive = true
    
    stack.translatesAutoresizingMaskIntoConstraints = false
    stack.topAnchor.constraint(equalTo: thumbnailImage.bottomAnchor).isActive = true
    stack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: margin).isActive = true
    stack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -margin).isActive = true
    stack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -margin).isActive = true
    stack.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.3).isActive = true
    
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func cellConfigure(data: MovieData) {
    let url = data.thumb
    let imageURL = URL(string: url)!
    let dataTask = URLSession.shared.dataTask(with: imageURL) { (data, response, error) in
      guard let data = data else { return }
      DispatchQueue.main.async {
        self.thumbnailImage.image = UIImage(data: data)
      }
    }
    dataTask.resume()
    
    if data.grade == 0 {
      grade.image = UIImage(named: "all")
    }else if data.grade == 12 {
      grade.image = UIImage(named: "12")
    }else if data.grade == 15 {
      grade.image = UIImage(named: "15")
    }else if data.grade == 19 {
      grade.image = UIImage(named: "19")
    }
    
    title.text = data.title
    secondLabels.text = "\(data.reservationGrade)위 \(data.userRating) / \(data.reservationRate)%"
    date.text = "개봉일: \(data.date)"
  }
}
