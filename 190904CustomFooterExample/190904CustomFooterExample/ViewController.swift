//
//  ViewController.swift
//  190904CustomFooterExample
//
//  Created by 차수연 on 04/09/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  private let tableView: UITableView = {
    let tableView = UITableView()
    tableView.translatesAutoresizingMaskIntoConstraints = false
    return tableView
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    autoLayout()
    setupTableView()
    
  }

  private func autoLayout() {
    view.addSubview(tableView)
    
    let guide = view.safeAreaLayoutGuide
    tableView.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
    tableView.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
    tableView.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
    tableView.bottomAnchor.constraint(equalTo: guide.bottomAnchor).isActive = true
  }
  
  private func setupTableView() {
    tableView.dataSource = self
    tableView.delegate = self
    
    tableView.separatorStyle = .none
    
    tableView.register(HeaderTableViewCell.self, forCellReuseIdentifier: HeaderTableViewCell.identifier)
    tableView.register(ContentTableViewCell.self, forCellReuseIdentifier: ContentTableViewCell.identifier)
    tableView.register(FooterTableViewCell.self, forCellReuseIdentifier: FooterTableViewCell.identifier)
    
  }

}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 3
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    switch indexPath.row {
    case 0:
      let cell = tableView.dequeueReusableCell(withIdentifier: HeaderTableViewCell.identifier, for: indexPath) as! HeaderTableViewCell
      cell.selectionStyle = .none
      return cell
    case 1:
      let cell = tableView.dequeueReusableCell(withIdentifier: ContentTableViewCell.identifier, for: indexPath) as! ContentTableViewCell
      cell.selectionStyle = .none
      return cell
    default:
      let cell = tableView.dequeueReusableCell(withIdentifier: FooterTableViewCell.identifier, for: indexPath) as! FooterTableViewCell
      cell.selectionStyle = .none
      return cell
    }
  }
  
  
}


extension ViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    <#code#>
  }
}

//extension ViewController: UITableViewDelegate {
//  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//    //footerCell이 선택되었을때
//    if indexPath.row == 2 {
//      //scroll을 맨위로
//      tableView.scrollToRow(at: IndexPath(item: 0, section: 0), at: .top, animated: true)
//    }
//  }
//}
