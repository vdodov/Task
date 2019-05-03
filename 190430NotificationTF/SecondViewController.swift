//
//  SecondViewController.swift
//  190430NotificationTF
//
//  Created by 차수연 on 03/05/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class SecondViewController: UITabBarController {
    
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(sendText),
            name: ViewController.text,
            object: nil
        )
        configure()
        autoLayout()
        
    }
    @objc func sendText(sender: Notification) {
        label.text = sender.userInfo?["text"] as? String
    }

    func configure() {
        label.text = ""
        label.textColor = .red
        
    }
    func autoLayout() {
        view.addSubview(label)
        
        let guide = view.safeAreaLayoutGuide
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: guide.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: guide.centerYAnchor).isActive = true
        label.widthAnchor.constraint(equalToConstant: 300).isActive = true
        label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

}
