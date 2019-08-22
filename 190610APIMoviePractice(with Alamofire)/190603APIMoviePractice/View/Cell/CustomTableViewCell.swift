//
//  CustomTableViewCell.swift
//  190603APIMoviePractice
//
//  Created by 차수연 on 03/06/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit


class CustomTableViewCell: UITableViewCell {
  static let identifier = "CustomTableViewCell"
  
  let thumbnailImage = UIImageView()
  
  let title = UILabel()
  let grade = UIImageView()
  
  let userRating = UILabel()
  let reservationGrade = UILabel()
  let reservationRate = UILabel()
  
  let date = UILabel()
  
  var stack3 = UIStackView()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    configure()
    addSubview()
    autoLayout()
    
  }
  
  private func addSubview() {
    contentView.addSubview(thumbnailImage)
    contentView.addSubview(stack3)
  }
  
  
  private func autoLayout() {
    let margin: CGFloat = 10
    thumbnailImage.translatesAutoresizingMaskIntoConstraints = false
    thumbnailImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: margin).isActive = true
    thumbnailImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: margin).isActive = true
    thumbnailImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -margin).isActive = true
    thumbnailImage.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.2).isActive = true
    
    stack3.translatesAutoresizingMaskIntoConstraints = false
    stack3.topAnchor.constraint(equalTo: contentView.topAnchor, constant: margin).isActive = true
    stack3.leadingAnchor.constraint(equalTo: thumbnailImage.trailingAnchor, constant: margin).isActive = true
    stack3.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -margin).isActive = true
    stack3.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -margin).isActive = true
    stack3.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.7).isActive = true
  }
  
   func configure() {
    let stack1 = UIStackView(arrangedSubviews: [title, grade])
    let stack2 = UIStackView(arrangedSubviews: [userRating, reservationGrade, reservationRate])
    stack3 = UIStackView(arrangedSubviews: [stack1, stack2, date])
    
//    if imageView?.image == UIImage(named: "0") {
//      imageView?.image = UIImage(named: "all")
//    }else if imageView?.image == UIImage(named: "12") {
//      imageView?.image = UIImage(named: "12")
//    }else if imageView?.image == UIImage(named: "15") {
//      imageView?.image = UIImage(named: "15")
//    }else if imageView?.image == UIImage(named: "19") {
//      imageView?.image = UIImage(named: "19")
//    }
    
    stack1.axis = .horizontal
    stack1.alignment = .center
    stack1.distribution = .fill
    stack1.spacing = 8
    
    stack2.axis = .horizontal
    stack2.alignment = .center
    stack2.distribution = .equalSpacing
    stack2.spacing = 8
    
    stack3.axis = .vertical
    stack3.alignment = .leading
    stack3.distribution = .fillEqually
    stack3.spacing = 8
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
    
    title.text = data.title
    
    if data.grade == 0 {
      grade.image = UIImage(named: "all")
    }else if data.grade == 12 {
      grade.image = UIImage(named: "12")
    }else if data.grade == 15 {
      grade.image = UIImage(named: "15")
    }else if data.grade == 19 {
      grade.image = UIImage(named: "19")
    }
    
    userRating.text = "평점: " + String(data.userRating)
    reservationRate.text = "예매순위: " + String(data.reservationRate)
    reservationGrade.text = "예매율: " + String(data.reservationGrade) + "위"
    date.text = "개봉일: " + data.date
    
  }
}


