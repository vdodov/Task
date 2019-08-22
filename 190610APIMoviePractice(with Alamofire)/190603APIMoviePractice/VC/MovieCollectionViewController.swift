//
//  MovieCollectionViewController.swift
//  190603APIMoviePractice
//
//  Created by 차수연 on 06/06/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class MovieCollectionViewController: UIViewController {
  
  let shared = MovieSingleton.shared
  
  private enum UI {
    static let itemsInLine: CGFloat = 2
    static let linesOnScreen: CGFloat = 2
    static let itemSpacing: CGFloat = 10.0
    static let lineSpacing: CGFloat = 10.0
    static let edgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 10)
    
    static let nextOffset: CGFloat = 40
  }

  let layout = UICollectionViewFlowLayout()
  lazy var collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: layout)
  
    override func viewDidLoad() {
        super.viewDidLoad()
      collectionView.backgroundColor = .clear

      addSubview()
      autoLayout()
      configure()
      shared.getData(vc: self)
    
    }
    
  private func addSubview() {
    view.addSubview(collectionView)
  }

  private func autoLayout() {
    let guide = view.safeAreaLayoutGuide
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    collectionView.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
    collectionView.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
    collectionView.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
    collectionView.bottomAnchor.constraint(equalTo: guide.bottomAnchor).isActive = true
  }

  private func configure() {
    collectionView.delegate = self
    
    setupFlowLayout()
    
    let refresh = UIRefreshControl()
    refresh.attributedTitle = NSAttributedString(string: "refreshing...")
    refresh.addTarget(self, action: #selector(callGetData), for: .allEvents)
    collectionView.refreshControl = refresh
    
    collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
    collectionView.dataSource = self
    self.title = "예매율순"
  }
  
  @objc private func callGetData() {
    shared.getData(vc: self)
  }
  
  private func setupFlowLayout() {
    layout.minimumInteritemSpacing = UI.itemSpacing
    layout.minimumLineSpacing = UI.lineSpacing
    layout.sectionInset = UI.edgeInsets
    
    let itemSpacing = UI.itemSpacing * (UI.itemsInLine - 1)
    let itemSpacing2 = UI.lineSpacing * (UI.linesOnScreen - 1)
    
    let horizontalInset = UI.edgeInsets.left + UI.edgeInsets.right
    let verticalInset = UI.edgeInsets.top + UI.edgeInsets.bottom
    
    let horizontalSpacing = itemSpacing + horizontalInset
    let verticalSpacing = itemSpacing2 + verticalInset
    
    let width = (view.frame.width - horizontalSpacing) / UI.itemsInLine
    let height = (view.frame.height - verticalSpacing) / UI.linesOnScreen
    
    let rounded = width.rounded(.down)
    let rounded2 = height.rounded(.down)
    
    layout.itemSize = CGSize(width: rounded, height: rounded2)
    
  }

}

extension MovieCollectionViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return shared.movieData.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
    
    cell.cellConfigure(data: shared.movieData[indexPath.row])
    
    return cell
  }
}

extension MovieCollectionViewController: UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    let detailVC = MovieDetailViewController()
    detailVC.title = shared.movieData[indexPath.row].title
    detailVC.id = shared.movieData[indexPath.row].id
    detailVC.dataConfigure(data: shared.movieData[indexPath.row])
    show(detailVC, sender: nil)
  }
}
