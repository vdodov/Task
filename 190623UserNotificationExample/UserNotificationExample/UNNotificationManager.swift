//
//  UNNotificationManager.swift
//  190622UserNotificationExample
//
//  Created by 차수연 on 22/06/2019.
//  Copyright © 2019 차수연. All rights reserved.
//
import UIKit
import UserNotifications

final class UNNotificationManager: NSObject {
  enum Identifier {
    static let basicCategory = "BasicCategory"
    static let anotherCategory = "AnotherCategory"
    
    static let timeIntervalRequest = "TimeIntervalRequest"
    
    static let repeatAction = "RepeatAction"
    static let removeAction = "RemoveAction"
    static let textInputAction = "TextInputAction"
  }
  
  private let center = UNUserNotificationCenter.current()
  
  
  func register() {
    let options: UNAuthorizationOptions = [.alert, .badge, .sound]
    center.delegate = self
    //권한요청
    center.requestAuthorization(options: options) { (isGranted, error) in
      guard isGranted else {
        print("No Granted")
        return self.requestAlertNotification()
      }
      print("Granted")
      self.setupNotificationCategories()
    }
  }
  
  
  //Noti 권한을 허용하지 않았을 경우 설정창 열기
  private func requestAlertNotification() {
    guard let settingUrl = URL(string: UIApplication.openSettingsURLString) else { return }
    DispatchQueue.main.async {
      UIApplication.shared.open(settingUrl)
    }
  }
  
  /***************************************************
   SetupNotificationCategories
   ***************************************************/
  
  func setupNotificationCategories() {
    let removeAction = UNNotificationAction(
      identifier: Identifier.removeAction,
      title: "지우기",
      options: [.destructive, .foreground]
    )
    
    let textInputAction = UNTextInputNotificationAction(
      identifier: Identifier.textInputAction,
      title: "푸시 알람 시간 변경",
      options: [.authenticationRequired],
      textInputButtonTitle: "확인",
      textInputPlaceholder: "숫자만 입력하세요."
    )
    
    let anotherCategory = UNNotificationCategory(
      identifier: Identifier.anotherCategory,
      actions: [removeAction, textInputAction],
      intentIdentifiers: [],
      options: [.customDismissAction]
    )
    center.setNotificationCategories([anotherCategory])
  }
  
  
  
  /***************************************************
   TimeIntervalNotification - TimeInterval로 지정한 시간(초) 이후로 알림 등록
   ***************************************************/
  
  func triggerTimeIntervalNotification(timeInterval: TimeInterval) {
    let content = UNMutableNotificationContent()
    content.categoryIdentifier = Identifier.anotherCategory
    content.title = NSString.localizedUserNotificationString(forKey: "맛있는 곱창", arguments: nil)
    content.body = NSString.localizedUserNotificationString(forKey: "배고파요. 곱창먹고싶어요.", arguments: nil)
    content.sound = UNNotificationSound.default
    
    
    //Image
    if let imageUrl = Bundle.main.url(forResource: "delicious", withExtension: "jpeg") {
      let attachment = try! UNNotificationAttachment(identifier: "attachmentImage", url: imageUrl)
      content.attachments = [attachment]
    }
    
    
    
    //repeats: true는 60초 이상일 경우만
    let trigger = UNTimeIntervalNotificationTrigger(
      timeInterval: timeInterval, repeats: false
    )
    let request = UNNotificationRequest(
      identifier: Identifier.timeIntervalRequest, content: content, trigger: trigger
    )
    center.add(request)
  }

}

extension UNNotificationManager: UNUserNotificationCenterDelegate {
  //앱이 실행중에 Noti 받을 수 있음
  func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
    print("\n----------willPresent notification-------------\n")
    print(notification)
    completionHandler([.alert, .sound])
    
  }
  //Foreground 아닌 상태에서 Noti 받았을 때 동작
  func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
    print("\n----------didReceive notification-------------\n")
    let content = response.notification.request.content
    let categoryID =  content.categoryIdentifier
    
    if categoryID == Identifier.anotherCategory {
      switch response.actionIdentifier {
      // X 버튼 눌렀을 때의 액션 ID
      case UNNotificationDismissActionIdentifier:
        print("Dismiss Notification")
      case Identifier.removeAction:
        print("Remove Action")
      // Remove Some Data
      case Identifier.textInputAction:
        if let inputResponse = response as? UNTextInputNotificationResponse {
          print("textInputAction")
          
          guard let userTextField = Double(inputResponse.userText) else { return }
          triggerTimeIntervalNotification(timeInterval: userTextField)
        }
      default: print("Unknown Action")
      }
    }
    completionHandler()
    
  }
  
}
