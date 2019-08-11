//
//  MyPagePreferTheaterView.swift
//  190808MegaboxPreferTheaterExample
//
//  Created by 차수연 on 08/08/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class MyPagePreferTheaterView: UIView {
  
  var theaterLabelArr: [UILabel] = []
  var lineLabelArr: [UILabel] = []
  var deleteButtonArr: [UIButton] = []
  
  var arr = ["dd", "jj", "hh"]
  
  let infoLabelTopLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.828620717, green: 0.828620717, blue: 0.828620717, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let infoLabelBottomLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.828620717, green: 0.828620717, blue: 0.828620717, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let infoLabel: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    label.textColor = #colorLiteral(red: 0.2199999988, green: 0.2199999988, blue: 0.2199999988, alpha: 1)
    label.textAlignment = .center
    label.text = "선호영화관은 최대 3개까지 등록하실 수 있습니다."
    label.font = UIFont.systemFont(ofSize: 13)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let theaterTopLine: UILabel = {
    let label = UILabel()
    label.backgroundColor = #colorLiteral(red: 0.828620717, green: 0.828620717, blue: 0.828620717, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  

  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = #colorLiteral(red: 0.899119074, green: 0.899119074, blue: 0.899119074, alpha: 1)
    setupView()
    makeTheaterView()
    
  }
  
  func makeTheaterView() {
    for i in 0..<arr.count {
      
      let theaterlabel = UILabel()
      theaterlabel.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
      theaterlabel.textColor = #colorLiteral(red: 0.2199999988, green: 0.2199999988, blue: 0.2199999988, alpha: 1)
      theaterlabel.textAlignment = .left
      theaterlabel.text = "    text\(i)"
      theaterlabel.font = UIFont.systemFont(ofSize: 13)
      theaterlabel.translatesAutoresizingMaskIntoConstraints = false
      
      let lineLabel = UILabel()
      lineLabel.backgroundColor = #colorLiteral(red: 0.828620717, green: 0.828620717, blue: 0.828620717, alpha: 1)
      lineLabel.translatesAutoresizingMaskIntoConstraints = false
      
      let deleteButton = UIButton()
      deleteButton.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
      deleteButton.translatesAutoresizingMaskIntoConstraints = false
      
      
      theaterLabelArr.append(theaterlabel)
      lineLabelArr.append(lineLabel)
      deleteButtonArr.append(deleteButton)
      
      addSubview(theaterlabel)
      addSubview(lineLabel)
      addSubview(deleteButton)
      
      if arr.count == 1 {
        if i == 0 {
          theaterlabel.topAnchor.constraint(equalTo: theaterTopLine.bottomAnchor).isActive = true
          theaterlabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
          theaterlabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
          theaterlabel.heightAnchor.constraint(equalToConstant: 45).isActive = true
          
          lineLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
          lineLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
          lineLabel.bottomAnchor.constraint(equalTo: theaterLabelArr[0].bottomAnchor).isActive = true
          lineLabel.heightAnchor.constraint(equalToConstant: 1).isActive = true
          
          deleteButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
          deleteButton.centerYAnchor.constraint(equalTo: theaterLabelArr[0].centerYAnchor).isActive = true
          deleteButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
          deleteButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        }
      } else if arr.count == 2 {
        if i == 0 {
          theaterlabel.topAnchor.constraint(equalTo: theaterTopLine.bottomAnchor).isActive = true
          theaterlabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
          theaterlabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
          theaterlabel.heightAnchor.constraint(equalToConstant: 45).isActive = true
          
          lineLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
          lineLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
          lineLabel.bottomAnchor.constraint(equalTo: theaterLabelArr[0].bottomAnchor).isActive = true
          lineLabel.heightAnchor.constraint(equalToConstant: 1).isActive = true
          
          deleteButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
          deleteButton.centerYAnchor.constraint(equalTo: theaterLabelArr[0].centerYAnchor).isActive = true
          deleteButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
          deleteButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        } else if i == 1 {
          theaterlabel.topAnchor.constraint(equalTo: theaterLabelArr[0].bottomAnchor).isActive = true
          theaterlabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
          theaterlabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
          theaterlabel.heightAnchor.constraint(equalToConstant: 45).isActive = true
          
          lineLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
          lineLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
          lineLabel.bottomAnchor.constraint(equalTo: theaterLabelArr[1].bottomAnchor).isActive = true
          lineLabel.heightAnchor.constraint(equalToConstant: 1).isActive = true
          
          deleteButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
          deleteButton.centerYAnchor.constraint(equalTo: theaterLabelArr[1].centerYAnchor).isActive = true
          deleteButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
          deleteButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        }
      } else if arr.count == 3 {
        if i == 0 {
          theaterlabel.topAnchor.constraint(equalTo: theaterTopLine.bottomAnchor).isActive = true
          theaterlabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
          theaterlabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
          theaterlabel.heightAnchor.constraint(equalToConstant: 45).isActive = true
          
          lineLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
          lineLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
          lineLabel.bottomAnchor.constraint(equalTo: theaterLabelArr[0].bottomAnchor).isActive = true
          lineLabel.heightAnchor.constraint(equalToConstant: 1).isActive = true
          
          deleteButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
          deleteButton.centerYAnchor.constraint(equalTo: theaterLabelArr[0].centerYAnchor).isActive = true
          deleteButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
          deleteButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        } else if i == 1 {
          theaterlabel.topAnchor.constraint(equalTo: theaterLabelArr[0].bottomAnchor).isActive = true
          theaterlabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
          theaterlabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
          theaterlabel.heightAnchor.constraint(equalToConstant: 45).isActive = true
          
          lineLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
          lineLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
          lineLabel.bottomAnchor.constraint(equalTo: theaterLabelArr[1].bottomAnchor).isActive = true
          lineLabel.heightAnchor.constraint(equalToConstant: 1).isActive = true
          
          deleteButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
          deleteButton.centerYAnchor.constraint(equalTo: theaterLabelArr[1].centerYAnchor).isActive = true
          deleteButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
          deleteButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        } else if i == 2 {
          theaterlabel.topAnchor.constraint(equalTo: theaterLabelArr[1].bottomAnchor).isActive = true
          theaterlabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
          theaterlabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
          theaterlabel.heightAnchor.constraint(equalToConstant: 45).isActive = true
          
          lineLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
          lineLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
          lineLabel.bottomAnchor.constraint(equalTo: theaterLabelArr[2].bottomAnchor).isActive = true
          lineLabel.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
          deleteButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
          deleteButton.centerYAnchor.constraint(equalTo: theaterLabelArr[2].centerYAnchor).isActive = true
          deleteButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
          deleteButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        }
      }
      
      
      
    }
  }
  
  func setupView() {
    addSubview(infoLabel)
    infoLabel.topAnchor.constraint(equalTo: topAnchor, constant: 40).isActive = true
    infoLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    infoLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    infoLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
    
    addSubview(infoLabelTopLine)
    infoLabelTopLine.topAnchor.constraint(equalTo: infoLabel.topAnchor).isActive = true
    infoLabelTopLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    infoLabelTopLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    infoLabelTopLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    
    addSubview(infoLabelBottomLine)
    infoLabelBottomLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    infoLabelBottomLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    infoLabelBottomLine.bottomAnchor.constraint(equalTo: infoLabel.bottomAnchor).isActive = true
    infoLabelBottomLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
  
    addSubview(theaterTopLine)
    theaterTopLine.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 15).isActive = true
    theaterTopLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    theaterTopLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    theaterTopLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    
    
    
    
    
  
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
}
