//
//  MovieDetailData.swift
//  190603APIMoviePractice
//
//  Created by 차수연 on 10/06/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import Foundation

struct MovieDetailData: Decodable {
  let director: String //감독
  let synopsis: String //줄거리
  let duration: Int
  let audience: Int
  let actor: String  //배우
  let genre: String
}
