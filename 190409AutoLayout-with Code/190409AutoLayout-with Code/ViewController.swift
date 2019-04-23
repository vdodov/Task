//
//  ViewController.swift
//  190409AutoLayout-with Code
//
//  Created by 차수연 on 23/04/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let firstView: UIView = UIView()
    let secondView: UIView = UIView()
    let thirdView: UIView = UIView()
    let fourthView: UIView = UIView()
    let fifthView: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activateLayoutAnchors()
    }
    
    func activateLayoutAnchors() {
        
        //view에 올림
        view.addSubview(firstView)
        view.addSubview(secondView)
        view.addSubview(thirdView)
        view.addSubview(fourthView)
        view.addSubview(fifthView)
        
        //background = black
        firstView.backgroundColor = .black
        secondView.backgroundColor = .black
        thirdView.backgroundColor = .black
        fourthView.backgroundColor = .black
        fifthView.backgroundColor = .black
        
        //AutoLay out
        //firstView
        firstView.translatesAutoresizingMaskIntoConstraints = false// code로 AutoLayout 작성시 스토리보드에서 리사이징하는 것을 막는 코드
        
        firstView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        firstView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        firstView.trailingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: -8).isActive = true
        firstView.heightAnchor.constraint(equalToConstant: 150).isActive = true// height 150 지정
        
        //secondView
        secondView.translatesAutoresizingMaskIntoConstraints = false
        
        secondView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        secondView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        secondView.trailingAnchor.constraint(equalTo: thirdView.leadingAnchor, constant: -8).isActive = true
        secondView.widthAnchor.constraint(equalTo: firstView.widthAnchor, multiplier: 0.7, constant: -1).isActive = true
        
        //thirdView
        thirdView.translatesAutoresizingMaskIntoConstraints = false
        
        thirdView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        thirdView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        thirdView.trailingAnchor.constraint(equalTo: fourthView.leadingAnchor, constant: -8).isActive = true
        thirdView.widthAnchor.constraint(equalTo: secondView.widthAnchor, multiplier: 0.7, constant: -2).isActive = true
        
        //fourthView
        fourthView.translatesAutoresizingMaskIntoConstraints = false
        
        fourthView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        fourthView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        fourthView.trailingAnchor.constraint(equalTo: fifthView.leadingAnchor, constant: -8).isActive = true
        fourthView.widthAnchor.constraint(equalTo: thirdView.widthAnchor, multiplier: 0.7, constant: -3).isActive = true
        
        //fifthView
        fifthView.translatesAutoresizingMaskIntoConstraints = false
        
        fifthView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        fifthView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        fifthView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        fifthView.widthAnchor.constraint(equalTo: fourthView.widthAnchor, multiplier: 0.7, constant: -4).isActive = true
        
        
        
        
        
    }
    
    
}

