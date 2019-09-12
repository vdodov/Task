//
//  FriendAddViewController.swift
//  TabNaviEx
//
//  Created by Kira on 05/04/2019.
//  Copyright © 2019 Kira. All rights reserved.
//

import UIKit

protocol FriendAddViewControllerDelegate: class {
    func textFieldData(_ name: String)
}

class FriendAddViewController: UIViewController {

    weak var delegate: FriendAddViewControllerDelegate?
    
    let addTextField = UITextField()
    let addButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        navigationSet()
        configure()
    }
    
    func navigationSet() {
        navigationItem.title = "친구추가"
        navigationItem.largeTitleDisplayMode = .never
    }
    
    private func configure() {
        addTextField.frame.size = CGSize(width: 200, height: 50)
        addTextField.center = view.center
        addTextField.frame.origin.y = 200
        addTextField.borderStyle = .roundedRect
        view.addSubview(addTextField)
        
        addButton.frame.size = CGSize(width: 100, height: 50)
        addButton.center = view.center
        addButton.frame.origin.y = 270
        addButton.backgroundColor = .gray
        addButton.layer.cornerRadius = 5
        addButton.setTitle("추가", for: .normal)
        addButton.addTarget(self, action: #selector(addButtonAction), for: .touchUpInside)
        view.addSubview(addButton)
        
    }
    
    @objc private func addButtonAction() {
        guard let name = addTextField.text, !name.isEmpty else {return alertAction(tilte: "Errer", message: "이름을 입력하세요")}
        delegate?.textFieldData(name)
        alertAction(tilte: "success", message: "\(name)(이)가 추가되었습니다")
    }
    
    private func alertAction(tilte: String, message:String) {
        let alertController = UIAlertController(title: tilte, message: message, preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "확인", style: .default) { _ in
            self.addTextField.text = ""
        }
        alertController.addAction(okAlert)
        present(alertController, animated: true)
    }
    
}

