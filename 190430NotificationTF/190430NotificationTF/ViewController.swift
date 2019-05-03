//
//  ViewController.swift
//  190430NotificationTF
//
//  Created by 차수연 on 03/05/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

extension ViewController {
    static var text: Notification.Name {
        return Notification.Name("Text")
    }
}

class ViewController: UIViewController {
    
    let textField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        autoLayout()
        configure()
    }
    
    func configure() {
        textField.borderStyle = .line
    }

    func autoLayout() {
        
        view.addSubview(textField)
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        let guide = view.safeAreaLayoutGuide
        textField.centerXAnchor.constraint(equalTo: guide.centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: guide.centerYAnchor).isActive = true
        textField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    


}
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        NotificationCenter.default.post(name: ViewController.text, object: nil, userInfo: ["text":textField.text])
        return true
    }
}

