//
//  AppDelegate.swift
//  TabNaviEx
//
//  Created by Kira on 05/04/2019.
//  Copyright © 2019 Kira. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let tabBarController = UITabBarController()
        let friendVC = UINavigationController(rootViewController: FriendViewController())
        friendVC.title = "Friend"
        friendVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        let optionVC = UINavigationController(rootViewController: OptionViewController())
        optionVC.title = "Option"
        optionVC.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        
        tabBarController.viewControllers = [friendVC, optionVC]
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        return true
    }
}

