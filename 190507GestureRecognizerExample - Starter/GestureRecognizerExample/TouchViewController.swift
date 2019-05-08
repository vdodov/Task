//
//  TouchViewController.swift
//  GestureRecognizerExample
//
//  Created by giftbot on 02/05/2019.
//  Copyright © 2019 giftbot. All rights reserved.
//

import UIKit

final class TouchViewController: UIViewController {

  var savePoint = CGPoint(x: 0, y: 0)
  @IBOutlet private weak var imageView: UIImageView!
    
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    imageView.layer.cornerRadius = imageView.frame.width / 2
    imageView.layer.masksToBounds = true
//    imageView.clipsToBounds = true
    
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches,with: event)
        guard let touch = touches.first else { return }
        let touchPoint = touch.location(in: touch.view)
        print(touchPoint)
        
        if imageView.frame.contains(touchPoint) {
            imageView.image = UIImage(named: "cat2")
        }
        savePoint = CGPoint(x: imageView.center.x - touchPoint.x, y: imageView.center.y - touchPoint.y)
        
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesMoved(touches, with: event)
        
        guard let touch = touches.first else { return }
        let touchPoint = touch.location(in: touch.view)
        print(touchPoint)
        
        if imageView.frame.contains(touchPoint) {
            //imageView.center = touchPoint
            imageView.center = CGPoint(x: touchPoint.x + savePoint.x, y: touchPoint.y + savePoint.y)
        }
        
        
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        print("touchesEnded")
        imageView.image = UIImage(named: "cat1")
    }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        print("touchesCancelled")
        imageView.image = UIImage(named: "cat1")
        
    }
}



