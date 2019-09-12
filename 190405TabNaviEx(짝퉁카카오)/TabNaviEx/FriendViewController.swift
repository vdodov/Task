//
//  ViewController.swift
//  TabNaviEx
//
//  Created by Kira on 05/04/2019.
//  Copyright © 2019 Kira. All rights reserved.
//

import UIKit

class FriendViewController: UIViewController {
    
    let friendAddVC = FriendAddViewController()
    let displayLabel = UILabel()
    var friendListArr: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendAddVC.delegate = self
        view.backgroundColor = .white
        
        navigationSet()
        configure()
    }
    
    private func navigationSet() {
        let addBarButton = UIBarButtonItem(title: "친구추가", style: .done, target: self, action: #selector(addBarButtonAction))
        
        navigationItem.title = "친구목록"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.rightBarButtonItem = addBarButton
    }
    
    private func configure() {
        displayLabel.frame.size = CGSize(width: 200, height: 300)
        displayLabel.center = view.center
        displayLabel.text = "친구없음"
        displayLabel.numberOfLines = 0
        displayLabel.textAlignment = .center
        displayLabel.font = UIFont.systemFont(ofSize: 15)
        displayLabel.textColor = .white
        displayLabel.backgroundColor = .blue
        view.addSubview(displayLabel)
    }
    
    @objc private func addBarButtonAction() {
        navigationController?.pushViewController(friendAddVC, animated: true)
    }
}

extension FriendViewController: FriendAddViewControllerDelegate {
    func textFieldData(_ name: String) {
        friendListArr.append(name)
        
        var tempText = ""
        for friend in friendListArr {
            tempText += "\(friend)\n"
        }
        displayLabel.text = tempText
    }
}
