//
//  MenuTitleView.swift
//  MovieCategoryExample
//
//  Created by 차수연 on 05/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit



class MenuTitleView: UIView {
  
  // MARK: Properties
  private var menuTitles = ["모든영화", "큐레이션"]
  
  private let menuTitleView: UIView = {
    let view = UIView()
    view.backgroundColor = .white
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  private let menuTitleDismissButton: UIButton = {
    let button = UIButton(type: .custom)
    button.setTitle("닫기", for: .normal)
    button.setTitleColor(#colorLiteral(red: 0.2392156863, green: 0.1215686275, blue: 0.5568627451, alpha: 1), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let menuTitleLabel: UILabel = {
    let label = UILabel()
    label.text = "영화 선택"
    label.font = UIFont.boldSystemFont(ofSize: 16)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let menuTitleSelectbutton: UIButton = {
    let button = UIButton()
    button.setTitle("선택완료", for: .normal)
    button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
    button.setTitleColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), for: .normal)
    button.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    button.layer.borderWidth = 1
    button.layer.cornerRadius = 5
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let movieTitleLabel: UILabel = {
    let label = UILabel()
    label.text = "보고싶은 하나의 영화를 선택해주세요."
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 13)
    label.textColor = .white
    label.backgroundColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let menuCollectionView: UICollectionView = {
    // flow layout
    let flowLayout = UICollectionViewFlowLayout()
    flowLayout.scrollDirection = .horizontal
    
    // collection view
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
    
    // not show scroll indicator
    collectionView.showsHorizontalScrollIndicator = false
    
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    collectionView.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
    return collectionView
  }()
  
  private let indicatorBar: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = #colorLiteral(red: 0.2392156863, green: 0.1215686275, blue: 0.5568627451, alpha: 1)
    return view
  }()
  
  private let movieListTableView: UITableView = {
    let tableView = UITableView()
    tableView.translatesAutoresizingMaskIntoConstraints = false
    return tableView
  }()
  
  var indicatorBarLeadingConstraint: NSLayoutConstraint!
  
  var delegate: MenuTitleViewDelegate?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    addSubView()
    autoLayout()
    setupCollectionView()
    menuCollectionView.selectItem(at: IndexPath(item: 0, section: 0), animated: true, scrollPosition: .centeredHorizontally)
    setupTableView()
    
  }
  
  private func addSubView() {
    self.addSubview(menuTitleView)
    self.addSubview(movieTitleLabel)
    self.addSubview(menuTitleDismissButton)
    self.addSubview(menuTitleLabel)
    self.addSubview(menuTitleSelectbutton)
    self.addSubview(menuCollectionView)
    self.addSubview(indicatorBar)
    self.addSubview(movieListTableView)
    
  }
  
  private func autoLayout() {
    let margin: CGFloat = 15
    menuTitleView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
    menuTitleView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    menuTitleView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    menuTitleView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    movieTitleLabel.topAnchor.constraint(equalTo: menuTitleView.bottomAnchor).isActive = true
    movieTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    movieTitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    movieTitleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    menuTitleDismissButton.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
    menuTitleDismissButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: margin).isActive = true
    menuTitleDismissButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    menuTitleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: margin).isActive = true
    menuTitleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    menuTitleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    menuTitleLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
    
    menuTitleSelectbutton.topAnchor.constraint(equalTo: self.topAnchor, constant: 12.5).isActive = true
    menuTitleSelectbutton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -margin).isActive = true
    menuTitleSelectbutton.heightAnchor.constraint(equalToConstant: 25).isActive = true
    
    menuCollectionView.topAnchor.constraint(equalTo: movieTitleLabel.bottomAnchor).isActive = true
    menuCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    menuCollectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    menuCollectionView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    indicatorBarLeadingConstraint = indicatorBar.leadingAnchor.constraint(equalTo: leadingAnchor)
    indicatorBarLeadingConstraint.isActive = true
    
    indicatorBar.widthAnchor.constraint(equalToConstant: 207).isActive = true
    indicatorBar.heightAnchor.constraint(equalToConstant: 3).isActive = true
    indicatorBar.bottomAnchor.constraint(equalTo: menuCollectionView.bottomAnchor).isActive = true
    
    movieListTableView.topAnchor.constraint(equalTo: indicatorBar.bottomAnchor).isActive = true
    movieListTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    movieListTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    movieListTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    
  }
  
  private func setupCollectionView() {
    
    menuCollectionView.dataSource = self
    menuCollectionView.delegate = self
    
    menuCollectionView.register(MenuTitleCell.self,forCellWithReuseIdentifier: MenuTitleCell.identifier)
  }
  
  private func setupTableView() {
    movieListTableView.dataSource = self
    movieListTableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}


extension MenuTitleView: UICollectionViewDataSource{
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return menuTitles.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MenuTitleCell.identifier, for: indexPath) as! MenuTitleCell
    cell.label.text = menuTitles[indexPath.row]
    return cell
  }
  
}

extension MenuTitleView: UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    delegate?.meunBarDidSelected(indexPath)
    
    indicatorBarLeadingConstraint.constant = (self.frame.width / CGFloat(menuTitles.count)) * CGFloat((indexPath.item))
    
  }
}

extension MenuTitleView: UICollectionViewDelegateFlowLayout{
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: self.frame.width / CGFloat(menuTitles.count), height: 40)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 0
  }
}

extension MenuTitleView: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 20 //영화 목록
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = movieListTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    cell.textLabel?.text = "영화 제목"
    return cell
  }
  
  
}
