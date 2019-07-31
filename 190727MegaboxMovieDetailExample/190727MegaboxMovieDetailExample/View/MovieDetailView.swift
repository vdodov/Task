//
//  MovieDetailView.swift
//  190727MegaboxMovieDetailExample
//
//  Created by 차수연 on 27/07/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class MovieDetailView: UIView {
  let view = MovieDetailSectionView()
  var isStatus = true
  
  let tableView: UITableView = {
    let tableView = UITableView(frame: .zero, style: .grouped)
    tableView.translatesAutoresizingMaskIntoConstraints = false
    return tableView
  }()
  
  let headerView: MovieDetailHeaderView = {
    let view = MovieDetailHeaderView()
    view.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 350)
    return view
  }()
  
  
  override init(frame: CGRect) {
    super.init(frame: frame)
  
    setupTableView()
    
  }
  
  
  
  func setupTableView() {
    tableView.separatorStyle = .none
    tableView.backgroundColor = #colorLiteral(red: 0.9563174175, green: 0.9563174175, blue: 0.9563174175, alpha: 1)
    tableView.tableHeaderView = headerView
//    tableView.separatorInset = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
    
    tableView.dataSource = self
    tableView.delegate = self
    tableView.register(TotalAudienceCell.self, forCellReuseIdentifier: TotalAudienceCell.identifier)
    
    addSubview(tableView)
    tableView.topAnchor.constraint(equalTo: topAnchor).isActive = true
    tableView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    tableView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    tableView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

extension MovieDetailView: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    switch isStatus {
    case true:
      return 9
    case false:
      return 3
      
    }
    
    
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    switch isStatus {
    case true:
      
      switch indexPath.row {
      case 0:
        let cell = TotalAudienceCell()
        cell.selectionStyle = .none
        return cell
      case 1:
        let cell = SummaryCell()
        cell.selectionStyle = .none
        
//        cell.addButtonAction = {
//          cell.addButton.isSelected.toggle()
//          
//          if cell.addButton.isSelected {
//            self.tableView.beginUpdates()
//            // 코드
//            
//            self.tableView.endUpdates()
//            
//          } else {
//            self.tableView.beginUpdates()
//            
//            self.tableView.endUpdates()
//          }
//        }
        return cell
      case 2:
        let cell = DirectorActorCell()
        cell.selectionStyle = .none
        return cell
      case 3:
        let cell = AdCell()
        cell.selectionStyle = .none
        return cell
      case 4:
        let cell = StillCutCell()
        cell.selectionStyle = .none
        return cell
      case 5:
        let cell = PreViewTitleCell()
        cell.selectionStyle = .none
        return cell
      case 6:
        let cell = PreViewCell()
        cell.selectionStyle = .none
        return cell
      default:
        let cell = PreViewCell()
        cell.selectionStyle = .none
        return cell
      }
      
    case false:
      
      switch indexPath.row {
      case 0:
        let cell = MoviePostCell()
        cell.selectionStyle = .none
        return cell
      case 1:
        let cell = CommentTitleCell()
        cell.selectionStyle = .none
        return cell
      case 2:
        let cell = CommentCell()
        cell.selectionStyle = .none
        return cell
      default:
        return UITableViewCell()
      }
      
    }

  }
  
  
}

extension MovieDetailView: UITableViewDelegate {
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    
    view.delegate = self
    return view
    
  }
}


extension MovieDetailView: MovieDetailSectionViewDelegate {
  func didTap(isStatus: Bool) {
    self.isStatus = isStatus
    tableView.reloadData()
  }
}
