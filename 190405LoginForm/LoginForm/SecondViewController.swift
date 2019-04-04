//
//  SecondViewController.swift
//  LoginForm
//
//  Created by 차수연 on 03/04/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var 이름 = ""
    var 스쿨 = ""
    var 아이디 = ""
    var 비밀번호 = ""

    @IBOutlet weak var 이름Label: UILabel!
    @IBOutlet weak var 스쿨Label: UILabel!
    @IBOutlet weak var 아이디Label: UILabel!
    @IBOutlet weak var 비밀번호Label: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        이름Label.text = 이름
        스쿨Label.text = 스쿨
        아이디Label.text = 아이디
        비밀번호Label.text = 비밀번호
        

    }
    

}
