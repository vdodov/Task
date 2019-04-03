//
//  ViewController.swift
//  190402StroyboardSegue
//
//  Created by 차수연 on 02/04/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var 개Button: UIButton!
    @IBOutlet weak var 고양이Button: UIButton!
    @IBOutlet weak var 새Button: UIButton!
   
    
    
    var 개count: Int = 0
    var 고양이count: Int = 0
    var 새count: Int = 0
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "개" {
            return 개count < 8
        }else if identifier == "고양이" {
            return 고양이count < 10
        }else {
            return 새count < 15
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//    @IBAction func didTap개Button(_ sender: UIButton) {
//        performSegue(withIdentifier: "개", sender: sender)
//    }
//    @IBAction func didTap고양이Button(_ sender: UIButton) {
//        performSegue(withIdentifier: "고양이", sender: sender)
//    }
//    @IBAction func didTap새Button(_ sender: UIButton) {
//        performSegue(withIdentifier: "새", sender: sender)
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let second = segue.destination as! SecondViewController
        if let id = segue.identifier {
            if id == "개" {
                second.animalImage = UIImage(named: "개")!
                개count += 1
                print(개count)
            } else if id == "고양이" {
                second.animalImage = UIImage(named: "고양이")!
                고양이count += 1
                print(고양이count)
            } else if id == "새" {
                second.animalImage = UIImage(named: "새")!
                새count += 1
                print(새count)
            }
        }
    }
    
    @IBAction func unwindToFirstViewController(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        guard let vc = unwindSegue.source as? SecondViewController else { return }
        개count += vc.count
        고양이count += vc.count
        새count += vc.count
        print(개count, 고양이count, 새count)
        
        
    }
}

