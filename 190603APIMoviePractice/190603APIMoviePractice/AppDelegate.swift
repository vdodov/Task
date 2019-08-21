//
//  AppDelegate.swift
//  190603APIMoviePractice
//
//  Created by 차수연 on 03/06/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    
    
    window = UIWindow(frame: UIScreen.main.bounds)
    
    
 
    
    let mainTB = MainTabBarController()
    
    window?.backgroundColor = .white
    window?.rootViewController = mainTB
    window?.makeKeyAndVisible()
    
    
    return true
  }
}

