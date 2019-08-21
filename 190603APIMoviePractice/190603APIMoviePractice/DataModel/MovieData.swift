//
//  MovieData.swift
//  190603APIMoviePractice
//
//  Created by 차수연 on 05/06/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import Foundation

struct Movie: Decodable {
  let movies: [MovieData]
}

struct MovieData: Decodable {
  let id: String
  let title: String
  let userRating: Double
  let thumb: String
  let grade: Int
  let reservationGrade: Int
  let date: String
  let reservationRate: Double
  
  enum CodingKeys: String, CodingKey {
    case id
    case title
    case userRating = "user_rating"
    case thumb
    case grade
    case reservationGrade = "reservation_grade"
    case date
    case reservationRate = "reservation_rate"
  }
  
  
}
