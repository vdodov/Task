//
//  MovieDetailViewController.swift
//  190603APIMoviePractice
//
//  Created by 차수연 on 10/06/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit
import Alamofire

class MovieDetailViewController: UIViewController {
  
  var id = ""
  lazy var url = "http://connect-boxoffice.run.goorm.io/movie?id=\(id)"
  var movieDetailData: MovieDetailData?
  
  let thumbnailImage = UIImageView()
  
  let movieTitle = UILabel()
  let grade = UIImageView()
  
  let date = UILabel()
  
  let genre = UILabel()
  
  let reservationTitle = UILabel()
  let reservation = UILabel()
  
  let ratingTitle = UILabel()
  let rating = UILabel()
  
  let audienceTitle = UILabel()
  let audience = UILabel()
  
  let lineView = UIView()
  let synopsisTitle = UILabel()
  let synopsis = UITextView()
  
  let lineView2 = UIView()
  let directorActorTitle = UILabel()
  let directorTitle = UILabel()
  let director = UILabel()
  let actorTitle = UILabel()
  let actor = UITextView()
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    getData()
    addSubview()
    autoLayout()
    configure()
    
  }
  private func getData() {
    let req = AF.request(url)
    req.validate()
      .responseData { (response) in
        switch response.result {
        case .success(let data):
          guard let movieData = try? JSONDecoder().decode(MovieDetailData.self, from: data) else { return }
          self.movieDetailData = movieData
          self.genre.text = "\(movieData.genre)/\(movieData.duration)분"
          self.audience.text = "\(movieData.audience)"
          self.synopsis.text = "\(movieData.synopsis)"
          self.director.text = "\(movieData.director)"
          self.actor.text = "\(movieData.actor)"
        case .failure(let error):
          print(error.localizedDescription)
        }
    }
  }
  
  private func addSubview() {
    view.addSubview(thumbnailImage)
    view.addSubview(movieTitle)
    view.addSubview(grade)
    view.addSubview(genre)
    view.addSubview(date)
    
    view.addSubview(reservationTitle)
    view.addSubview(reservation)
    view.addSubview(ratingTitle)
    view.addSubview(rating)
    view.addSubview(audienceTitle)
    view.addSubview(audience)
    
    view.addSubview(lineView)
    view.addSubview(synopsisTitle)
    view.addSubview(synopsis)
    
    view.addSubview(lineView2)
    view.addSubview(directorActorTitle)
    view.addSubview(directorTitle)
    view.addSubview(director)
    view.addSubview(actorTitle)
    view.addSubview(actor)
    
  }

  private func autoLayout() {
    let guide = view.safeAreaLayoutGuide
    let margin: CGFloat = 10
    thumbnailImage.translatesAutoresizingMaskIntoConstraints = false
    thumbnailImage.topAnchor.constraint(equalTo: guide.topAnchor, constant: margin).isActive = true
    thumbnailImage.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: margin).isActive = true
    thumbnailImage.widthAnchor.constraint(equalTo: guide.widthAnchor, multiplier: 0.3).isActive = true
    thumbnailImage.heightAnchor.constraint(equalTo: thumbnailImage.widthAnchor, multiplier: 1.3).isActive = true
    
    movieTitle.translatesAutoresizingMaskIntoConstraints = false
    movieTitle.topAnchor.constraint(equalTo: guide.topAnchor, constant: 60).isActive = true
    movieTitle.leadingAnchor.constraint(equalTo: thumbnailImage.trailingAnchor, constant: 10).isActive = true
    movieTitle.widthAnchor.constraint(equalTo: guide.widthAnchor, multiplier: 0.4).isActive = true
    movieTitle.heightAnchor.constraint(equalToConstant: 30).isActive = true
    
    grade.translatesAutoresizingMaskIntoConstraints = false
    grade.topAnchor.constraint(equalTo: guide.topAnchor, constant: 60).isActive = true
    grade.leadingAnchor.constraint(equalTo: movieTitle.trailingAnchor, constant: 10).isActive = true
    grade.widthAnchor.constraint(equalTo: movieTitle.heightAnchor).isActive = true
    grade.heightAnchor.constraint(equalTo: grade.widthAnchor).isActive = true
    
    date.translatesAutoresizingMaskIntoConstraints = false
    date.topAnchor.constraint(equalTo: movieTitle.bottomAnchor).isActive = true
    date.leadingAnchor.constraint(equalTo: thumbnailImage.trailingAnchor, constant: 10).isActive = true
    date.widthAnchor.constraint(equalTo: guide.widthAnchor, multiplier: 0.4).isActive = true
    date.heightAnchor.constraint(equalToConstant: 30).isActive = true
    
    genre.translatesAutoresizingMaskIntoConstraints = false
    genre.topAnchor.constraint(equalTo: date.bottomAnchor).isActive = true
    genre.leadingAnchor.constraint(equalTo: thumbnailImage.trailingAnchor, constant: 10).isActive = true
    genre.widthAnchor.constraint(equalTo: guide.widthAnchor, multiplier: 0.6).isActive = true
    genre.heightAnchor.constraint(equalToConstant: 30).isActive = true
    
    reservationTitle.translatesAutoresizingMaskIntoConstraints = false
    reservationTitle.topAnchor.constraint(equalTo: thumbnailImage.bottomAnchor, constant: 10).isActive = true
    reservationTitle.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
    reservationTitle.widthAnchor.constraint(equalTo: guide.widthAnchor, multiplier: 0.3).isActive = true
    reservationTitle.heightAnchor.constraint(equalToConstant: 30).isActive = true
    
    reservation.translatesAutoresizingMaskIntoConstraints = false
    reservation.topAnchor.constraint(equalTo: reservationTitle.bottomAnchor).isActive = true
    reservation.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
    reservation.widthAnchor.constraint(equalTo: guide.widthAnchor, multiplier: 0.3).isActive = true
    reservation.heightAnchor.constraint(equalToConstant: 30).isActive = true
    
    ratingTitle.translatesAutoresizingMaskIntoConstraints = false
    ratingTitle.topAnchor.constraint(equalTo: thumbnailImage.bottomAnchor, constant: 10).isActive = true
    ratingTitle.leadingAnchor.constraint(equalTo: reservationTitle.trailingAnchor).isActive = true
    ratingTitle.widthAnchor.constraint(equalTo: guide.widthAnchor, multiplier: 0.3).isActive = true
    ratingTitle.heightAnchor.constraint(equalToConstant: 30).isActive = true
    
    rating.translatesAutoresizingMaskIntoConstraints = false
    rating.topAnchor.constraint(equalTo: ratingTitle.bottomAnchor).isActive = true
    rating.leadingAnchor.constraint(equalTo: reservation.trailingAnchor).isActive = true
    rating.widthAnchor.constraint(equalTo: guide.widthAnchor, multiplier: 0.3).isActive = true
    rating.heightAnchor.constraint(equalToConstant: 30).isActive = true
    
    audienceTitle.translatesAutoresizingMaskIntoConstraints = false
    audienceTitle.topAnchor.constraint(equalTo: thumbnailImage.bottomAnchor, constant: 10).isActive = true
    audienceTitle.leadingAnchor.constraint(equalTo: ratingTitle.trailingAnchor).isActive = true
    audienceTitle.widthAnchor.constraint(equalTo: guide.widthAnchor, multiplier: 0.3).isActive = true
    audienceTitle.heightAnchor.constraint(equalToConstant: 30).isActive = true
    
    audience.translatesAutoresizingMaskIntoConstraints = false
    audience.topAnchor.constraint(equalTo: audienceTitle.bottomAnchor).isActive = true
    audience.leadingAnchor.constraint(equalTo: rating.trailingAnchor
      ).isActive = true
    audience.widthAnchor.constraint(equalTo: guide.widthAnchor, multiplier: 0.3).isActive = true
    audience.heightAnchor.constraint(equalToConstant: 30).isActive = true
    
    lineView.translatesAutoresizingMaskIntoConstraints = false
    lineView.topAnchor.constraint(equalTo: audience.bottomAnchor, constant: 10).isActive = true
    lineView.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
    lineView.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
    lineView.heightAnchor.constraint(equalToConstant: 5).isActive = true
    
    synopsisTitle.translatesAutoresizingMaskIntoConstraints = false
    synopsisTitle.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 5).isActive = true
    synopsisTitle.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 10).isActive = true
    synopsisTitle.widthAnchor.constraint(equalToConstant: 100).isActive = true
    synopsisTitle.heightAnchor.constraint(equalToConstant: 30).isActive = true
    
    synopsis.translatesAutoresizingMaskIntoConstraints = false
    synopsis.topAnchor.constraint(equalTo: synopsisTitle.bottomAnchor).isActive = true
    synopsis.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20).isActive = true
    synopsis.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20).isActive = true
    synopsis.heightAnchor.constraint(equalToConstant: 200).isActive = true
    
    lineView2.translatesAutoresizingMaskIntoConstraints = false
    lineView2.topAnchor.constraint(equalTo: synopsis.bottomAnchor, constant: 10).isActive = true
    lineView2.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
    lineView2.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
    lineView2.heightAnchor.constraint(equalToConstant: 5).isActive = true
    
    directorActorTitle.translatesAutoresizingMaskIntoConstraints = false
    directorActorTitle.topAnchor.constraint(equalTo: lineView2.bottomAnchor, constant: 5).isActive = true
    directorActorTitle.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 10).isActive = true
    directorActorTitle.widthAnchor.constraint(equalToConstant: 100).isActive = true
    directorActorTitle.heightAnchor.constraint(equalToConstant: 30).isActive = true
    
    directorTitle.translatesAutoresizingMaskIntoConstraints = false
    directorTitle.topAnchor.constraint(equalTo: directorActorTitle.bottomAnchor, constant: 5).isActive = true
    directorTitle.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20).isActive = true
    directorTitle.widthAnchor.constraint(equalToConstant: 50).isActive = true
    directorTitle.heightAnchor.constraint(equalToConstant: 30).isActive = true
    
    director.translatesAutoresizingMaskIntoConstraints = false
    director.topAnchor.constraint(equalTo: directorTitle.topAnchor).isActive = true
    director.leadingAnchor.constraint(equalTo: directorTitle.trailingAnchor, constant: 5).isActive = true
    director.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20).isActive = true
    director.bottomAnchor.constraint(equalTo: directorTitle.bottomAnchor).isActive = true
    
    actorTitle.translatesAutoresizingMaskIntoConstraints = false
    actorTitle.topAnchor.constraint(equalTo: directorTitle.bottomAnchor, constant: 5).isActive = true
    actorTitle.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20).isActive = true
    actorTitle.widthAnchor.constraint(equalToConstant: 50).isActive = true
    actorTitle.heightAnchor.constraint(equalToConstant: 30).isActive = true
    
    
    actor.translatesAutoresizingMaskIntoConstraints = false
    actor.topAnchor.constraint(equalTo: actorTitle.topAnchor).isActive = true
    actor.leadingAnchor.constraint(equalTo: actorTitle.trailingAnchor, constant: 5).isActive = true
    actor.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20).isActive = true
    actor.heightAnchor.constraint(equalToConstant: 60).isActive = true
    
    
    
    
    
    
    
    
  }
  
  private func configure() {
    view.backgroundColor = .white
    
    reservationTitle.text = "예매율"
    reservationTitle.textAlignment = .center
    reservation.textAlignment = .center
    
    ratingTitle.text = "평점"
    ratingTitle.textAlignment = .center
    rating.textAlignment = .center
    
    audienceTitle.text = "누적관객수"
    audienceTitle.textAlignment = .center
    audience.textAlignment = .center
    
    lineView.backgroundColor = .lightGray
    
    synopsisTitle.text = "줄거리"
    
    synopsis.font = UIFont.systemFont(ofSize: 13)
    
    lineView2.backgroundColor = .lightGray
    
    directorActorTitle.text = "감독/출연"
    directorTitle.text = "감독"
    directorTitle.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
    actorTitle.text = "출연"
    actorTitle.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
    actor.font = UIFont.systemFont(ofSize: 16)
    
  }
  
  
  func dataConfigure(data: MovieData) {
    let url = data.thumb
    let imageURL = URL(string: url)!

    let dataTask = URLSession.shared.dataTask(with: imageURL) { (data, response, error) in
      guard let data = data else { return }
      DispatchQueue.main.async {
        self.thumbnailImage.image = UIImage(data: data)
      }

    }
    dataTask.resume()

    movieTitle.text = data.title

    if data.grade == 0 {
      grade.image = UIImage(named: "all")
    }else if data.grade == 12 {
      grade.image = UIImage(named: "12")
    }else if data.grade == 15 {
      grade.image = UIImage(named: "15")
    }else if data.grade == 19 {
      grade.image = UIImage(named: "19")
    }

    date.text = data.date + "개봉"
    reservation.text = "\(data.reservationGrade)위 \(data.reservationRate)%"
    rating.text = "\(data.userRating)"
    
    
    
    
  }

}

