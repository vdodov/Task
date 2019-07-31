//
//  MovieDetailHeaderView.swift
//  190727MegaboxMovieDetailExample
//
//  Created by 차수연 on 29/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class MovieDetailHeaderView: UIView {
  
  //예고편
  let preView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = #imageLiteral(resourceName: "preview")
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  //firstView
  let firstView: UIView = {
    let view = UIView()
    view.backgroundColor = .white
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  //썸네일
  let thumbnailImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.layer.borderWidth = 1
    imageView.layer.borderColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
    imageView.image = #imageLiteral(resourceName: "a")
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  //나이
  let gradeImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = #imageLiteral(resourceName: "booking_filmrating_12")
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  //제목
  let title: UILabel = {
    let label = UILabel()
    label.text = "스파이더맨: 파 프로 홈"
    label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  //개봉일
  let releaseDate: UILabel = {
    let label = UILabel()
    label.text = "2019.07.02 개봉"
    label.textColor = #colorLiteral(red: 0.4227316228, green: 0.4227316228, blue: 0.4227316228, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  //장르 / 상영시간
  let genre: UILabel = {
    let label = UILabel()
    label.text = "코미디, SF, 액션, 어드밴처 / 130 분"
    label.textColor = #colorLiteral(red: 0.4227316228, green: 0.4227316228, blue: 0.4227316228, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  //line
  let separateLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  //공유하기
  let shardButton: UIButton = {
    let button = UIButton()
    button.setTitle("공유하기", for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
    button.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  //보고싶어
  let likeButton: UIButton = {
    let button = UIButton()
    button.setTitle("보고싶어", for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
    button.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  //한줄평 작성
  let commentWriteButton: UIButton = {
    let button = UIButton()
    button.setTitle("한줄평 작성", for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
    button.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  //바로예매
  let reservationButton: UIButton = {
    let button = UIButton()
    button.setTitle("바로예매", for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
    button.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()

  override init(frame: CGRect) {
    super.init(frame: frame)
    
    setupHeaderView()
  }
  
  func setupHeaderView() {
    addSubview(preView)
    preView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
    preView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    preView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    preView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.45).isActive = true
    
    addSubview(firstView)
    firstView.topAnchor.constraint(equalTo: preView.bottomAnchor).isActive = true
    firstView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    firstView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    firstView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
    
    firstView.addSubview(thumbnailImageView)
    thumbnailImageView.topAnchor.constraint(equalTo: preView.bottomAnchor, constant: -40).isActive = true
    thumbnailImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
    thumbnailImageView.widthAnchor.constraint(equalTo: preView.widthAnchor, multiplier: 0.2).isActive = true
    thumbnailImageView.heightAnchor.constraint(equalTo: preView.heightAnchor, multiplier: 0.7).isActive = true
    
    firstView.addSubview(gradeImageView)
    gradeImageView.topAnchor.constraint(equalTo: preView.bottomAnchor, constant: 10).isActive = true
    gradeImageView.leadingAnchor.constraint(equalTo: thumbnailImageView.trailingAnchor, constant: 15).isActive = true
    gradeImageView.widthAnchor.constraint(equalToConstant: 18).isActive = true
    gradeImageView.heightAnchor.constraint(equalToConstant: 18).isActive = true
    
    firstView.addSubview(title)
    title.topAnchor.constraint(equalTo: gradeImageView.topAnchor).isActive = true
    title.leadingAnchor.constraint(equalTo: gradeImageView.trailingAnchor, constant: 2).isActive = true
//    title.trailingAnchor.constraint(equalTo: firstView.trailingAnchor, constant: -10).isActive = true
//    title.bottomAnchor.constraint(equalTo: gradeImageView.bottomAnchor).isActive = true
    
    firstView.addSubview(releaseDate)
    releaseDate.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 13).isActive = true
    releaseDate.leadingAnchor.constraint(equalTo: title.leadingAnchor).isActive = true
//    releaseDate.widthAnchor.constraint(equalTo: title.widthAnchor).isActive = true
    
    firstView.addSubview(genre)
    genre.topAnchor.constraint(equalTo: releaseDate.bottomAnchor, constant: 2).isActive = true
    genre.leadingAnchor.constraint(equalTo: releaseDate.leadingAnchor).isActive = true
//    genre.widthAnchor.constraint(equalTo: releaseDate.widthAnchor).isActive = true
    
    firstView.addSubview(separateLine)
    separateLine.topAnchor.constraint(equalTo: thumbnailImageView.bottomAnchor, constant: 15).isActive = true
    separateLine.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
    separateLine.trailingAnchor.constraint(equalTo: firstView.trailingAnchor, constant: -20).isActive = true
    separateLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    firstView.addSubview(shardButton)
    shardButton.topAnchor.constraint(equalTo: separateLine.bottomAnchor).isActive = true
    shardButton.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    shardButton.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    shardButton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 4).isActive = true
    
    firstView.addSubview(likeButton)
    likeButton.topAnchor.constraint(equalTo: separateLine.bottomAnchor).isActive = true
    likeButton.leadingAnchor.constraint(equalTo: shardButton.trailingAnchor).isActive = true
    likeButton.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    likeButton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 4).isActive = true
    
    firstView.addSubview(commentWriteButton)
    commentWriteButton.topAnchor.constraint(equalTo: separateLine.bottomAnchor).isActive = true
    commentWriteButton.leadingAnchor.constraint(equalTo: likeButton.trailingAnchor).isActive = true
    commentWriteButton.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    commentWriteButton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 4).isActive = true
    
    
    //바로예매버튼
    firstView.addSubview(reservationButton)
    reservationButton.topAnchor.constraint(equalTo: separateLine.bottomAnchor).isActive = true
    reservationButton.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    reservationButton.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    reservationButton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 4).isActive = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
