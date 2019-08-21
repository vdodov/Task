//
//  MovieCollectionViewController.swift
//  190603APIMoviePractice
//
//  Created by 차수연 on 06/06/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class MovieCollectionViewController: UIViewController {
  
  private let url = "http://connect-boxoffice.run.goorm.io/movies"
  private var movieData: [MovieData] = []
  
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
      getData()
    
    }
  
  private func getData() {
    let movieURL = URL(string: url)!
    let dataTask = URLSession.shared.dataTask(with: movieURL) { (data, response, error) in
      guard let data = data, let movieData = try? JSONDecoder().decode(Movie.self, from: data) else { return }
      self.movieData = movieData.movies
      DispatchQueue.main.async {
        self.collectionView.reloadData()
      }
    }
    dataTask.resume()
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
    setupFlowLayout()
    collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
    collectionView.dataSource = self
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
    return movieData.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
    
    let url = movieData[indexPath.row].thumb
    let imageURL = URL(string: url)!
    let dataTask = URLSession.shared.dataTask(with: imageURL) { (data, response, error) in
      DispatchQueue.main.async {
        cell.thumbnailImage.image = UIImage(data: data!)
      }
      
    }
    dataTask.resume()
    
    if movieData[indexPath.row].grade == 0 {
      cell.grade.image = UIImage(named: "all")
    } else if movieData[indexPath.row].grade == 12 {
      cell.grade.image = UIImage(named: "12")
    } else if movieData[indexPath.row].grade == 15 {
      cell.grade.image = UIImage(named: "15")
    } else if movieData[indexPath.row].grade == 19 {
      cell.grade.image = UIImage(named: "19")
    }
    
    cell.title.text = movieData[indexPath.row].title
    
    cell.secondLabels.text = "\(movieData[indexPath.row].reservationGrade)위\(movieData[indexPath.row].userRating) / \(movieData[indexPath.row].reservationRate)%"
    cell.date.text = "개봉일: \(movieData[indexPath.row].date)"
    return cell
    
  }
  
  
}
