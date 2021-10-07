//
//  CollectionViewController.swift
//  CardGame1
//
//  Created by 이건준 on 2021/10/06.
//

import UIKit

private let reuseableIdentifier = "cell"
private let reuseableHeaderIdentifier = "header"
private let reuseableFooterIdentifier = "footer"
class CollectionViewController:UICollectionViewController{
    let image = ["image1.png", "image2.png", "image3.png", "image4.png", "image5.png", "image1.png", "image2.png", "image3.png", "image4.png", "image5.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    //MARK: -Configure
    func configure(){
        view.backgroundColor = .tertiarySystemBackground
        collectionView.register(CollectionCell.self, forCellWithReuseIdentifier: reuseableIdentifier)
        
        collectionView.register(CollectionHeaderCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: reuseableHeaderIdentifier)
        
        collectionView.register(CollectionFooterCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: reuseableFooterIdentifier)
    }
}
extension CollectionViewController{
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseableIdentifier, for: indexPath) as! CollectionCell
        
        let img = image.shuffled()
        cell.cardName = img[indexPath.row]
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind{
        case UICollectionView.elementKindSectionHeader:
        let cell = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: reuseableHeaderIdentifier, for: indexPath) as! CollectionHeaderCell
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.tertiarySystemGroupedBackground.cgColor
        return cell
        case UICollectionView.elementKindSectionFooter:
            let cell = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: reuseableFooterIdentifier, for: indexPath) as! CollectionFooterCell
            return cell
        
        default:
            print("Nothing")
            return UICollectionReusableView()
        }
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
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 40)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width
                      , height: 40)
    }
    
}

