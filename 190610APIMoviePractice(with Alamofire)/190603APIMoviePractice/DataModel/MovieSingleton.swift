//
//  File.swift
//  190603APIMoviePractice
//
//  Created by 차수연 on 10/06/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import Foundation
import Alamofire

class MovieSingleton {
  var url = "http://connect-boxoffice.run.goorm.io/movies"
  
  static let shared = MovieSingleton()
  var movieData:[MovieData] = []
  
  private init() {}
  
  func getData(vc: UIViewController) {
    let req = AF.request(url)
    req.validate()
      .responseData { (response) in
        switch response.result {
        case .success(let data):
          guard let movieData = try? JSONDecoder().decode(Movie.self, from: data) else { return }
          self.movieData = movieData.movies
          if let vc = vc as? MovieTableViewController {
            vc.tableView.reloadData()
            vc.tableView.refreshControl?.endRefreshing()
          } else if let vc = vc as? MovieCollectionViewController {
            vc.collectionView.reloadData()
            vc.collectionView.refreshControl?.endRefreshing()
          }
          
        case .failure(let error):
          print(error.localizedDescription)
        }
    }
  }
}


