//
//  StillCutCell.swift
//  190727MegaboxMovieDetailExample
//
//  Created by 차수연 on 29/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class StillCutCell: UITableViewCell {
  
  let titleLabel: UILabel = {
    let label = UILabel()
    label.text = "스틸컷"
    label.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  
  // MARK: - collectionView 만들어야함
  let myCollectionView: UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    collectionView.backgroundColor = .clear
    collectionView.showsHorizontalScrollIndicator = false
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    return collectionView
  }()
  
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    setupSillCutCell()
  }
  
  func setupSillCutCell() {
    myCollectionView.delegate = self
    myCollectionView.dataSource = self
    myCollectionView.register(StillCutCollectionCell.self, forCellWithReuseIdentifier: StillCutCollectionCell.identifier)
    
    addSubview(titleLabel)
    titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 30).isActive = true
    titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    
    addSubview(myCollectionView)
    myCollectionView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
    myCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    myCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
    myCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    myCollectionView.heightAnchor.constraint(equalToConstant: 120).isActive = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
}

extension StillCutCell: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 10
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StillCutCollectionCell.identifier, for: indexPath) as! StillCutCollectionCell
    return cell

  }


}


extension StillCutCell: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
    let width = UIScreen.main.bounds.width / 4.5

    return CGSize(width: width , height: myCollectionView.frame.height)
  }

  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
  }

  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 5
  }
}

