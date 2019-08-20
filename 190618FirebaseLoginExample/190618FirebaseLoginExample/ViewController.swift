//
//  ViewController.swift
//  190618FirebaseLoginExample
//
//  Created by 차수연 on 18/06/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore

class ViewController: UIViewController {

  var db: Firestore!
  
  @IBOutlet weak var userId: UITextField!
  @IBOutlet weak var userPassword: UITextField!
  @IBOutlet weak var userPasswordCheck: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let settings = FirestoreSettings()
    Firestore.firestore().settings = settings
    db = Firestore.firestore()
  }

  @IBAction func didTapOkButton(_ sender: UIButton) {
    guard let userId = userId.text, let userPassword = userPasswordCheck.text else { return }
    
    let docRef = db.collection("users").document("\(userId)")
    
    docRef.getDocument { (document, error) in
      if let document = document, document.exists {
        
        
        let dataDic = document.data() as! [String: String]
        let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
        self.alertAction(title: "아이디중복", message: "")
        print("Document data: \(dataDescription)")
        print("Document data: ", dataDic["id"])
        
      } else {
        print("Document does not exist")
        
        
        
        
        
        
        
        //id 중복 없을때 데이터 추가
        self.db.collection("users").document("\(userId)").setData([
          "id": "\(userId)",
          "password": "\(userPassword)"
        ]) { err in
          if let err = err {
            print("Error writing document: \(err)")
          } else {
            self.alertAction(title: "성공", message: "")
            self.userId.text = nil
            self.userPassword.text = nil
            print("Document successfully written!")
          }
        }
        
        
        
        
        
        
        
        
        
      }
    }
    
    
    
    
    
  }
  

  
  private func alertAction(title: String, message: String) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let okAction = UIAlertAction(title: "확인", style: .default)
    let cancelAction = UIAlertAction(title: "취소", style: .destructive)
    alert.addAction(okAction)
    alert.addAction(cancelAction)
    present(alert, animated: true)
  }
  
  
  
  
}

