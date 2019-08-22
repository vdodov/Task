//
//  ViewController.swift
//  190603APIMoviePractice
//
//  Created by 차수연 on 03/06/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit
import Alamofire


class MovieTableViewController: UIViewController {
  
  let shared = MovieSingleton.shared

  let tableView = UITableView()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    addSubview()
    autoLayout()
    configure()
    shared.getData(vc: self)
  }
  
  override func viewWillAppear(_ animated: Bool) {
    tableView.reloadData()
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
    let refresh = UIRefreshControl()
    refresh.attributedTitle = NSAttributedString(string: "refreshing..")
    refresh.addTarget(self, action: #selector(callGetData), for: .allEvents)
    tableView.refreshControl = refresh
    
    tableView.delegate = self
    
    tableView.rowHeight = 120
    tableView.dataSource = self
    tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
    self.title = "예매율순"
  }
  
  @objc private func callGetData() {
    shared.getData(vc: self)
  }
  
}

extension MovieTableViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return shared.movieData.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as! CustomTableViewCell
    let url = shared.movieData[indexPath.row].thumb
    let imageURL = URL(string: url)!
    let dataTask = URLSession.shared.dataTask(with: imageURL) { (data, response, error) in
      DispatchQueue.main.async {
        cell.thumbnailImage.image = UIImage(data: data!)
      }
      
    }
    dataTask.resume()
  
    cell.cellConfigure(data: shared.movieData[indexPath.row])
    return cell
  }
}

extension MovieTableViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let detailVC = MovieDetailViewController()
    detailVC.title = shared.movieData[indexPath.row].title
    detailVC.id = shared.movieData[indexPath.row].id
    detailVC.dataConfigure(data: shared.movieData[indexPath.row])
    show(detailVC, sender: nil)
  }
}
