//
//  ViewController.swift
//  190430NotificationCenter
//
//  Created by 차수연 on 30/04/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

extension ViewController {
    static var chageColor: Notification.Name {
        return Notification.Name("ChangeColor")
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func chageButton(_ sender: UIButton) {
        let color = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: CGFloat(alphaSlider.value)
        )
        NotificationCenter.default.post(name: ViewController.chageColor, object: nil, userInfo: ["color": color])
    }
    
}

