//
//  MainViewController.swift
//  190520KakaoLoginExample
//
//  Created by 차수연 on 20/05/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  @IBOutlet private weak var thumbnailImageView: UIImageView!
  @IBOutlet private weak var profileImageView: UIImageView!
  @IBOutlet private weak var nickNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  @IBAction private func logoutButtonDidTap(_ sender: Any) {
    KOSession.shared().logoutAndClose { (success, error) -> Void in
      if let error = error {
        return print(error.localizedDescription)
      }
      // Logout success
      AppDelegate.instance.setupRootViewController()
    }
  }

}
