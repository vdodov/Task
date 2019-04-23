//
//  ViewController.swift
//  CustomAlertController
//
//  Created by Kira on 09/04/2019.
//  Copyright © 2019 Kira. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    let alertButton = UIButton()
    let secondVC = SecondViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        secondVC.delegate = self
        
        configure()
        autoLayout()
    }
    
    private func configure() {
        alertButton.backgroundColor = .gray
        alertButton.layer.cornerRadius = 25
        alertButton.setTitle("Alert", for: .normal)
        alertButton.setTitleColor(.white, for: .normal)
        alertButton.addTarget(self, action: #selector(alertButtonAction), for: .touchUpInside)
        view.addSubview(alertButton)
    }
    
    private func autoLayout() {
        alertButton.translatesAutoresizingMaskIntoConstraints = false
        
        alertButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        alertButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        alertButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        alertButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc private func alertButtonAction() {
        
    
        secondVC.modalPresentationStyle = .overCurrentContext
        present(secondVC, animated: true)
        
    }

}

extension FirstViewController: SecondViewControllerDelegate {
    func changeBackgroundColor(_ color: UIColor) {
        view.backgroundColor = color
    }
    
    
}
