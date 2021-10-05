//
//  CollectionCell.swift
//  CardGame1
//
//  Created by 이건준 on 2021/10/06.
//

import UIKit

class CollectionCell:UICollectionViewCell{
    var cardName:String?{
        didSet{
            cardImage.image = UIImage(named: cardName!)
        }
    }
    
    lazy var cardImage:UIImageView={
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: -Configure
    func configure(){
        backgroundColor = .systemBackground
        
        addSubview(cardImage)
        cardImage.translatesAutoresizingMaskIntoConstraints = false
        cardImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        cardImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        cardImage.widthAnchor.constraint(equalToConstant: frame.width).isActive = true
        cardImage.heightAnchor.constraint(equalToConstant: frame.height).isActive = true
    }
}
