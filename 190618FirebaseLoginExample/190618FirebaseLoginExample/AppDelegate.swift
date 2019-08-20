//
//  AppDelegate.swift
//  190618FirebaseLoginExample
//
//  Created by 차수연 on 18/06/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()
    
    return true
  }

 

}

