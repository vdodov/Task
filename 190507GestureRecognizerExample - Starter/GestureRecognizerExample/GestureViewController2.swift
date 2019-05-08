//
//  GestureViewController2.swift
//  GestureRecognizerExample
//
//  Created by 차수연 on 07/05/2019.
//  Copyright © 2019 giftbot. All rights reserved.
//

import UIKit

class GestureViewController2: UIViewController {
    let tapLabel = UILabel()
    let pointLabel = UILabel()
    var tapCount = 0
    var pastXY = CGPoint(x: 0, y: 0)

    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }
    
    func configure() {
        view.addSubview(tapLabel)
        view.addSubview(pointLabel)
        
        
        
        
        let guide = view.safeAreaLayoutGuide
        tapLabel.translatesAutoresizingMaskIntoConstraints = false
        tapLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 20).isActive = true
        tapLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20).isActive = true
        tapLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        tapLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        pointLabel.translatesAutoresizingMaskIntoConstraints = false
        pointLabel.topAnchor.constraint(equalTo: tapLabel.bottomAnchor, constant: 10).isActive = true
        pointLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20).isActive = true
        pointLabel.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        pointLabel.heightAnchor.constraint(equalTo: tapLabel.heightAnchor).isActive = true
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        guard let touch = touches.first else { return }
        let touchPoint = touch.location(in: touch.view)
        let strNum = String(format: "%.1f", Double(touchPoint.x))
        let strNum2 = String(format: "%.1f", Double(touchPoint.y))
        pointLabel.text = "좌표: \(strNum), \(strNum2)"
        
        
        if abs(pastXY.x - touchPoint.x) > 10 || abs(pastXY.y - touchPoint.y) > 10 {
            tapCount = 0
        }
        
        pastXY = touchPoint
        
        tapCount += 1
        tapLabel.text = "횟수: \(tapCount)"
        
        
        
        
        
    }
}
