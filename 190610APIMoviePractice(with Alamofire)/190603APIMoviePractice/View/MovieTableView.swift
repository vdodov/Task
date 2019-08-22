//
//  MovieTableView.swift
//  190603APIMoviePractice
//
//  Created by 차수연 on 03/06/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class MovieTableView: UIView {

  let tableView = UITableView()
  
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    addSubView()
    autoLayout()
    configure()

  }
  
  
  
  private func addSubView() {
    self.addSubview(tableView)
  }

  private func autoLayout() {
    
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
    tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
  }
  
  private func configure() {
    tableView.rowHeight = 100
    tableView.dataSource = self
    tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

extension MovieTableView: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as! CustomTableViewCell
    return cell
  }
  
  
}
