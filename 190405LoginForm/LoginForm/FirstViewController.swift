//
//  ViewController.swift
//  LoginForm
//
//  Created by 차수연 on 03/04/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var randomNumber:Int = 0

    @IBOutlet weak var 이름TextField: UITextField!
    @IBOutlet weak var 스쿨SegmentControl: UISegmentedControl!
    @IBOutlet weak var 아이디TextField: UITextField!
    @IBOutlet weak var 비밀번호TextField: UITextField!
    @IBOutlet weak var 비밀번호확인TextField: UITextField!
    @IBOutlet weak var 비밀번호Switch: UISwitch!
    @IBOutlet weak var 보안문자TextField: UITextField!
    @IBOutlet var 보안문자Switch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    


    //editingDidEnd -> 이름, 아이디, 비밀번호값을 tag로 구분해서 저장
    @IBAction func 정보입력Action(_ sender: UITextField) {
        guard let text = sender.text else { return }
        switch sender.tag {
        case 1: //이름
            이름TextField.text = text
        case 2: //아이디
            아이디TextField.text = text
        case 3://비밀번호
            비밀번호TextField.text = text
        default:
            return
        }
    }
    //비밀번호 2개 일치시 스위치 ON
    @IBAction func 비밀번호확인Action(_ sender: UITextField) {
        guard let text = sender.text else { return }
        let isCorrectPass = text == 비밀번호TextField.text //비밀번호 동일 여부
        비밀번호Switch.setOn(isCorrectPass, animated: true) // 비밀번호가 동일하면 스위치 ON
    }
    
    
    //보안문자버튼 클릭시 알럿창으로 보안문자 생성
    @IBAction func 보안문자Action(_ sender: UIButton) {
        randomNumber = Int.random(in: 1000 ... 9999) //보안문자 랜덤 생성
        alert(title: "\(randomNumber)")
    }
    
    //보안문자입력 일치시 스위치ON
    @IBAction func 보안문자입력Action(_ sender: UITextField) {
        guard let text = sender.text else { return }
        let isCorrectNumber = text == String(randomNumber) //입력값과 보안문자가 동일한지 확인
        보안문자Switch.setOn(isCorrectNumber, animated: true) // 보안문자가 동일하면 스위치 ON

    
    }
    //ActionSegue -> ShouldPerformSegue -> Prepare
    //ShouldPerformSegue에서 조건주기
    //모든 입력값을 받아야 가입 가능 -> 그렇지 않을 경우 누락 alert창 띄우기
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if (보안문자Switch.isOn) && (비밀번호Switch.isOn) && 이름TextField.text != nil && 아이디TextField.text != nil && 비밀번호TextField.text != nil && 비밀번호확인TextField.text != nil && 보안문자TextField.text != nil{
            return true
        }else {
            alert(title: "누락")
            return false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { //값을 SecondViewController로 보내줌
        super.prepare(for: segue, sender: sender)
        
        guard let secondVC = segue.destination as? SecondViewController else { return }
        
        guard let name = 이름TextField.text else { return }
        guard let school = 스쿨SegmentControl.titleForSegment(at: 스쿨SegmentControl.selectedSegmentIndex) else { return }
        guard let id = 아이디TextField.text else { return }
        guard let pw = 비밀번호TextField.text else { return }
        
        secondVC.이름 = name
        secondVC.스쿨 = school
        secondVC.아이디 = id
        secondVC.비밀번호 = pw
        
    }

    //다시 돌아왔을때 초기화
    @IBAction func unwindToFirstVC(_ unwindSegue: UIStoryboardSegue) {
        이름TextField.text = ""
        스쿨SegmentControl.isSelected = false
        아이디TextField.text = ""
        비밀번호TextField.text = ""
        비밀번호확인TextField.text = ""
        보안문자TextField.text = ""
        비밀번호Switch.setOn(false, animated: true)
        보안문자Switch.setOn(false, animated: true)
        
        
        
        
        
        
    }
    //alert 함수
    func alert(title: String) {
        let alertController = UIAlertController(title: title, message: "" , preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default)
        
        alertController.addAction(okAction)
        present(alertController,animated: true)
    }
}

