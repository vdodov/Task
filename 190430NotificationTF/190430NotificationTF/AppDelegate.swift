//
//  AppDelegate.swift
//  190430NotificationTF
//
//  Created by 차수연 on 03/05/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
       
        let vc = ViewController()
        let secondVC = SecondViewController()
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [vc,secondVC]
        
        vc.tabBarItem = UITabBarItem(title: "a", image: .none, tag: 0)
        secondVC.tabBarItem = UITabBarItem(title: "b", image: .none, tag: 1)
        
        
        
        window?.backgroundColor = .white
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        return true
    }

}

