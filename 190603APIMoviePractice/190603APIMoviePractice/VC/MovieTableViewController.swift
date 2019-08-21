//
//  ViewController.swift
//  190603APIMoviePractice
//
//  Created by 차수연 on 03/06/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class MovieTableViewController: UIViewController {
  
  private let url = "http://connect-boxoffice.run.goorm.io/movies"
  private var movieData: [MovieData] = []
  

  private let tableView = UITableView()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.reloadData()
    addSubview()
    autoLayout()
    configure()
    getData()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    tableView.reloadData()
  }
  
  private func getData() {
    let movieURL = URL(string: url)!
    let dataTask = URLSession.shared.dataTask(with: movieURL) { (data, response, error) in
      guard let data = data, let movieData = try? JSONDecoder().decode(Movie.self, from: data) else { return }
      self.movieData = movieData.movies
      DispatchQueue.main.async {
        self.tableView.reloadData()
      }
    }
    dataTask.resume()
  }
  
  private func addSubview() {
    view.addSubview(tableView)
  }
  
  private func autoLayout() {
    let guide = view.safeAreaLayoutGuide
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
    tableView.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
    tableView.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
    tableView.bottomAnchor.constraint(equalTo: guide.bottomAnchor).isActive = true
  }
  
  private func configure() {
    tableView.rowHeight = 120
    tableView.dataSource = self
    tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
    
  }

}

extension MovieTableViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return movieData.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as! CustomTableViewCell

    let url = movieData[indexPath.row].thumb
    let imageURL = URL(string: url)!
    let dataTask = URLSession.shared.dataTask(with: imageURL) { (data, response, error) in
      DispatchQueue.main.async {
        cell.thumbnailImage.image = UIImage(data: data!)
      }
      
    }
    dataTask.resume()
    
    cell.title.text = movieData[indexPath.row].title
    if movieData[indexPath.row].grade == 0 {
      cell.grade.image = UIImage(named: "all")
    } else if movieData[indexPath.row].grade == 12 {
      cell.grade.image = UIImage(named: "12")
    } else if movieData[indexPath.row].grade == 15 {
      cell.grade.image = UIImage(named: "15")
    } else if movieData[indexPath.row].grade == 19 {
      cell.grade.image = UIImage(named: "19")
    }
    cell.userRating.text = "평점: \(String(movieData[indexPath.row].userRating))"
    cell.reservationGrade.text = "예매순위: \(String(movieData[indexPath.row].reservationGrade))"
    cell.reservationRate.text = "예매율: \(String(movieData[indexPath.row].reservationRate))"
    cell.date.text = "개봉일: \(movieData[indexPath.row].date)"
    return cell
  }
  
  
}
