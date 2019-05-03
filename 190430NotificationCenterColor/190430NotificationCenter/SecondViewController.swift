//
//  SecondViewController.swift
//  190430NotificationCenter
//
//  Created by 차수연 on 30/04/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    var color: UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(colorChangeView),
            name: ViewController.chageColor,
            object: nil
        )

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        colorView.backgroundColor = color
    }
    @objc func colorChangeView(sender: Notification) {
//        guard let userinfo = sender.userInfo,let infoColor = userinfo["color"], let color = infoColor as? UIColor else {print("err");return}
        color = sender.userInfo!["color"] as? UIColor
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
