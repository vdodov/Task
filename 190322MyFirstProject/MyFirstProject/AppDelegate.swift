//
//  AppDelegate.swift
//  MyFirstProject
//
//  Created by 차수연 on 22/03/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // 어플리케이션 앱의 초기 실행 과정이 끝난 직후
        print("didFinishLaunchingWithOptions")
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        //Active 상태를 벗어나는 순간. Inactive상태로 가기 직전
        print("WillResignActive")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("DidEnterBackground")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        print("WillEnterForeground")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        print("DidBecomeActive")
    }

    func applicationWillTerminate(_ application: UIApplication) {
       print("WillTerminate")
    }


}
