//
//  PaymentViewController.swift
//  PaymentExample
//
//  Created by 차수연 on 06/08/2019.
//  Copyright © 2019 차수연. All rights reserved.
//

import UIKit

class PaymentViewController: UIViewController {
  
  let paymentView: PaymentView = {
    let view = PaymentView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()

    override func viewDidLoad() {
        super.viewDidLoad()

      setupPaymentView()
    }
    
  private func setupPaymentView() {
    let guide = view.safeAreaLayoutGuide
    view.addSubview(paymentView)
    paymentView.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
    paymentView.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
    paymentView.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
    paymentView.bottomAnchor.constraint(equalTo: guide.bottomAnchor).isActive = true
  }

}
