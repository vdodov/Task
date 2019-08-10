//
//  AppDelegate.swift
//  190719SelectSeatViewExample
//
//  Created by 차수연 on 19/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.backgroundColor = .white
    window?.rootViewController = SelectSeatViewController()
    window?.makeKeyAndVisible()
    
    return true
  }

}

