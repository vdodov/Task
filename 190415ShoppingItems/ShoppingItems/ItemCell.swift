//
//  ItemCell.swift
//  ShoppingItems
//
//  Created by giftbot on 2019. 4. 10..
//  Copyright © 2019년 giftbot. All rights reserved.
//

import UIKit

protocol PhoneSellerDelegate: class {
    func salesPhone(_ cell: ItemCell)
}


final class ItemCell: UITableViewCell {
    
    //변수 생성 및 초기화
    var imageLogo: String = "" //이미지
    var modelName: String = "" //상품명
    var stockMax: Int = 0 //상품재고
    var seller: Int = 0 //상품판매개수
    
    weak var delegate: PhoneSellerDelegate?
    
    let saleCountLabel = UILabel() //상품재고Label
    let phoneImage = UIImageView() //상품이미지Image
    let phoneNameLabel = UILabel() //상품명Label
    let button = UIButton(type: .custom) //상품추가버튼Button (type:.custom)!
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //이미지
        contentView.addSubview(phoneImage)
        
        //상품명
        phoneNameLabel.text = modelName
        phoneNameLabel.textAlignment = .left
        contentView.addSubview(phoneNameLabel)

        //상품증가버튼
        button.setImage(UIImage(named: "add"), for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        contentView.addSubview(button)
        
        //판매개수
        contentView.addSubview(saleCountLabel)
        
        // Auto layout 왼쪽부터
        phoneImage.translatesAutoresizingMaskIntoConstraints = false
//        phoneImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        phoneImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        phoneImage.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        phoneImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        phoneImage.trailingAnchor.constraint(equalTo: phoneNameLabel.leadingAnchor, constant: -10).isActive = true //phoneNameLabel가 기준 -> -10
        phoneImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
        

        
        
        phoneNameLabel.translatesAutoresizingMaskIntoConstraints = false
        phoneNameLabel.leadingAnchor.constraint(equalTo: phoneImage.trailingAnchor, constant: 10).isActive = true
        phoneNameLabel.topAnchor.constraint(equalTo: phoneImage.topAnchor).isActive = true
        phoneNameLabel.bottomAnchor.constraint(equalTo: phoneImage.bottomAnchor).isActive = true
        phoneNameLabel.trailingAnchor.constraint(equalTo: saleCountLabel.leadingAnchor, constant: -10).isActive = true
        
        saleCountLabel.translatesAutoresizingMaskIntoConstraints = false
        saleCountLabel.leadingAnchor.constraint(equalTo: phoneNameLabel.trailingAnchor, constant: 10).isActive = true
        saleCountLabel.topAnchor.constraint(equalTo: phoneImage.topAnchor).isActive = true
        saleCountLabel.bottomAnchor.constraint(equalTo: phoneImage.bottomAnchor).isActive = true
        saleCountLabel.trailingAnchor.constraint(equalTo: button.leadingAnchor).isActive = true
        saleCountLabel.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.leadingAnchor.constraint(equalTo: saleCountLabel.trailingAnchor).isActive = true
        button.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        button.topAnchor.constraint(equalTo: phoneImage.topAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: phoneImage.bottomAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
    }
    
    func setCell(_ image: String, _ name: String, counting: String, stockMax: Int) {
        self.phoneImage.image = UIImage(named: image)
        self.phoneNameLabel.text = name
        self.saleCountLabel.text = counting
        self.stockMax = stockMax
    }
    
    @objc func didTapButton(_ sender: UIButton){
        // 버튼 클릭시 TableView에 작업을 대리
        delegate?.salesPhone(self)
    }
}
