//
//  CollectionFooterCell.swift
//  CardGame1
//
//  Created by 이건준 on 2021/10/07.
//

import UIKit

class CollectionFooterCell:UICollectionReusableView{
    lazy var footerLabel:UILabel={
       let label = UILabel()
        label.text = "g2"
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(){
        backgroundColor = .systemRed
        
        addSubview(footerLabel)
        footerLabel.translatesAutoresizingMaskIntoConstraints = false
        footerLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        footerLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
