//
//  Model.swift
//  NaverAPIExample
//
//  Created by MBP04 on 2018. 4. 5..
//  Copyright © 2018년 codershigh. All rights reserved.
//

import Foundation
import UIKit

//모든 속성은 Movie 객체를 생성한 후에 값을 입력해줄 것이기 때문에, Optional로 처리
class Movie {
    var title:String?
    var link:String?
    var imageURL:String?
    var image:UIImage?
    var pubDate:String?
    var director:String?
    var actors:String?
    var userRating:String?
    
    init() {
        
    }
    
    func getPosterImage() {
        //
        
        return
    }
}
