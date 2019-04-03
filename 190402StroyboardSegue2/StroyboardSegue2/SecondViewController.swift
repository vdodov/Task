//
//  SecondViewController.swift
//  StroyboardSegue2
//
//  Created by 차수연 on 03/04/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {


    @IBOutlet weak var mySegment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
//        let firstVC = segue.destination as! ViewController
//
//        firstVC.myLabelText = mySegment.titleForSegment(at: mySegment.selectedSegmentIndex) ?? ""
        
    }
    

    
}
