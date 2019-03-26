//
//  ViewController.swift
//  UITextField
//
//  Created by 차수연 on 26/03/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    @IBAction func editingDidBegin(_ sender: Any) {
        print("editingDidBegin")
    }

    @IBAction func editingChanged(_ sender: UITextField) {
        guard let text = sender.text else {return}
        print(text)
        myLabel.text = text
        myLabel.font = UIFont.boldSystemFont(ofSize: 40)
        myLabel.textColor = .blue
    }
    @IBAction func didEndOnExit(_ sender: Any) {
        print("didEndOnExit")
        //리턴키를 눌렀을 때 키보드를 내려주는 것
        myLabel.font = UIFont.boldSystemFont(ofSize: 20)
        myLabel.textColor = .red
        
    }

    @IBAction func primaryActionTriggered(_ sender: Any) {
        print("primaryActionTriggered")
    }
    @IBAction func editingDidEnd(_ sender: Any) {
        print("editingDidEnd")
    }
    
    


}

