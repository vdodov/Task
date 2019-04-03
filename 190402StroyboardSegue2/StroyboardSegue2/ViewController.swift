//
//  ViewController.swift
//  StroyboardSegue2
//
//  Created by 차수연 on 03/04/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var myLabel: UILabel!
    
    var myLabelText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindToViewController(_ unwindSegue: UIStoryboardSegue) {
        guard let vc = unwindSegue.source as? SecondViewController else { return }
        myLabel.text = vc.mySegment.titleForSegment(at: vc.mySegment.selectedSegmentIndex)

       

        
        
    }


}

