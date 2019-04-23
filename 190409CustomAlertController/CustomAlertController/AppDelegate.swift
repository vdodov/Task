//
//  AppDelegate.swift
//  CustomAlertController
//
//  Created by Kira on 09/04/2019.
//  Copyright © 2019 Kira. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        window?.rootViewController = FirstViewController()
        window?.makeKeyAndVisible()
        
        
        return true
    }
    
    
    

}

