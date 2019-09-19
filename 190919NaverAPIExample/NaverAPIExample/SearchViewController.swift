//
//  SearchViewController.swift
//  NaverAPIExample
//
//  Created by MBP04 on 2018. 4. 5..
//  Copyright © 2018년 codershigh. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
  
  @IBOutlet weak var searchTextField: UITextField!
  // 1.SearchVC에서 MoviesTableVC로 향하는 segue를 연결해두고, '검색' 버튼을 눌렀을 때 segue를 실행
  @IBAction func searchButtonPressed(_ sender: Any) {
    if let _ = searchTextField.text {
      performSegue(withIdentifier: "searchSegue", sender: self)
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  // MARK: - Navigation
  
  // 2.prepareForSegue() 메소드에서는 MoviesTableVC의 queryText 필드에 텍스트 필드의 내용을 저장해줌으로써 다음 뷰로 검색어를 넘김
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let moviesVC = segue.destination as? MoviesTableViewController {
      if let text = searchTextField.text {
        moviesVC.queryText = text
        print("[Log]: ", text)
      }
    }
    
  }
  
}
