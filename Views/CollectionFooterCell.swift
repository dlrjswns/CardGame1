//
//  CollectionFooterCell.swift
//  CardGame1
//
//  Created by 이건준 on 2021/10/07.
//

import UIKit

class CollectionFooterCell:UICollectionReusableView{
    var count = 10
    
    lazy var mixButton:UIButton={
        let button = UIButton(type: .system)
        button.setTitle("Mix", for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 5
        button.layer.borderColor = UIColor.systemGroupedBackground.cgColor
        return button
    }()
    
    lazy var startButton:UIButton={
        let button = UIButton(type: .system)
        button.setTitle("Start", for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 5
        button.layer.borderColor = UIColor.systemGroupedBackground.cgColor
        return button
    }()
    
    lazy var timerLabel:UILabel={
       let label = UILabel()
        label.layer.cornerRadius = 10
        label.layer.borderWidth = 5
        label.layer.borderColor = UIColor.systemGroupedBackground.cgColor
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        makeTimer()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: -Make Timer
    
    func makeTimer(){
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(repeatTimer), userInfo: nil, repeats: true)
    }
    
    @objc func repeatTimer(){
        timerLabel.text = String(count)
        count = count - 1
    }
    
    
    func configure(){
        backgroundColor = .systemBackground
        
       addSubview(mixButton)
        mixButton.translatesAutoresizingMaskIntoConstraints = false
        mixButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mixButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 30).isActive = true
        mixButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        addSubview(startButton)
        startButton.translatesAutoresizingMaskIntoConstraints = false
        startButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        startButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -30).isActive = true
        startButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        addSubview(timerLabel)
        timerLabel.translatesAutoresizingMaskIntoConstraints = false
        timerLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        timerLabel.centerYAnchor.constraint(equalTo: mixButton.centerYAnchor).isActive = true
        timerLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
        timerLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
}
