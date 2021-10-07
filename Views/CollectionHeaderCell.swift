//
//  CollectionHeaderCell.swift
//  CardGame1
//
//  Created by 이건준 on 2021/10/07.
//

import UIKit

class CollectionHeaderCell:UICollectionReusableView{
    lazy var titleLabel:UILabel={
       let label = UILabel()
        label.text = "Poketmon CardGame"
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
        backgroundColor = .systemBackground
        
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
