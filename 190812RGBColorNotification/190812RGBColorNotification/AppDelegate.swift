//
//  AppDelegate.swift
//  190812RGBColorNotification
//
//  Created by 차수연 on 12/08/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    window = UIWindow(frame: UIScreen.main.bounds)
    let tabBar = UITabBarController()
    
    let vc = ViewController()
    let secondVC = SecondViewController()
    
    vc.tabBarItem = UITabBarItem(title: "first", image: nil, tag: 0)
    secondVC.tabBarItem = UITabBarItem(title: "second", image: nil, tag: 1)
    
    tabBar.viewControllers = [
    vc,
    secondVC
    ]
    
    
    window?.backgroundColor = .white
    window?.rootViewController = tabBar
    window?.makeKeyAndVisible()
    
    
    return true
  }

}

