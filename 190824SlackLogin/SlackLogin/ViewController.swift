//
//  ViewController.swift
//  SlackLogin
//
//  Created by 차수연 on 24/08/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let charSet: CharacterSet = {
       var cs = CharacterSet.lowercaseLetters
        cs.insert(charactersIn: "0123456789")
        cs.insert(charactersIn: "-")
        return cs.inverted
    }()
    
    
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var placeholderLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var urlField: UITextField!
    @IBOutlet weak var placeholderLabel: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    
    //notification을 저장할 속성을 선언
    var tokens = [NSObjectProtocol]()
    
    deinit {
        tokens.forEach { NotificationCenter.default.removeObserver($0)}
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //옵져버 추가
        var token = NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: OperationQueue.main) { [weak self] (noti) in
            //키보드 높이 구하기
            if let frameValue = noti.userInfo? [UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
                let keybordFrame = frameValue.cgRectValue
                
                self?.bottomConstraint.constant = keybordFrame.size.height
                
                UIView.animate(withDuration: 0.3, animations: {
                    self?.view.layoutIfNeeded()
                })
            }
        }
        tokens.append(token)
    }


}

extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        
        if string.count > 0 { //입력모드에서만 실행
            guard string.rangeOfCharacter(from: charSet) == nil else {
                return false
            }
        }
        
        //        print(">>>>", textField.text) //바로 이전문자가 return
        let finalText = NSMutableString(string: textField.text ?? "") //텍스트 속성에 저장된 문자열로 초기화
        finalText.replaceCharacters(in: range, with: string) //입력이나 삭제가 반영된 최종문자열 출력
        
        //입력된 텍스트 너비 구하기 -> 폰트를 기준으로 계산
        //텍스트필드의 font가져오기
        let font = textField.font ?? UIFont.systemFont(ofSize: 16)
        let dict = [NSAttributedString.Key.font: font]
        let width = finalText.size(withAttributes: dict).width
        
        placeholderLeadingConstraint.constant = width
        
        if finalText.length == 0 {
            placeholderLabel.text = "workspace-url.slack.com"
        } else {
            placeholderLabel.text = ".slack.com"
        }
        
        return true
    }
}

