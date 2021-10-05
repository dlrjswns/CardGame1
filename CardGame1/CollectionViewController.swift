//
//  CollectionViewController.swift
//  CardGame1
//
//  Created by 이건준 on 2021/10/06.
//

import UIKit

private let reuseableIdentifier = "cell"
class CollectionViewController:UICollectionViewController{
    let image = ["image1.png", "image2.png", "image3.png", "image4.png", "image5.png", "image6.png", "image7.png", "image8.png", "image1.png", "image2.png", "image3.png", "image4.png", "image5.png", "image6.png", "image7.png", "image8.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    //MARK: -Configure
    func configure(){
        view.backgroundColor = .tertiarySystemBackground
        collectionView.register(CollectionCell.self, forCellWithReuseIdentifier: reuseableIdentifier)
    }
}
extension CollectionViewController{
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseableIdentifier, for: indexPath) as! CollectionCell
        
        let img = image.shuffled()
        cell.cardName = img[indexPath.row]
        return cell
    }
    
}

extension CollectionViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width/3)-2, height: (view.frame.width/3)-2)
    }
}

