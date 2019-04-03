//
//  SecondViewController.swift
//  190402StroyboardSegue
//
//  Created by 차수연 on 02/04/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var count = 0

    var animalImage: UIImage = UIImage()
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var allCount: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        animalImageView.image = animalImage
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func allCountAction(_ sender: UIButton) {
        count += 1
        print(count)
    }
    
    
}
