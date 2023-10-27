//
//  CollectionViewProtocols.swift
//  ProgrammaticUI
//
//  Created by Emre Özbağdatlı on 27.10.2023.
//

import Foundation
import UIKit

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource {

    func configureWorldCuisineCollectionView() {
        
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 20
        layout.minimumLineSpacing = 20
        layout.itemSize = CGSize(width: 88, height: 114)
        layout.scrollDirection = .horizontal
        worldCuisineCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        worldCuisineCollectionView.register(WorldCuisineCollectionViewCell.self, forCellWithReuseIdentifier: "configureWorldCuisineCollectionViewCell")
        worldCuisineCollectionView.showsHorizontalScrollIndicator = false
        
        contentView.addSubview(worldCuisineCollectionView)
        worldCuisineCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        worldCuisineCollectionView.dataSource = self
        worldCuisineCollectionView.delegate = self
    }
    
    func configureMostPopularCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 20
        layout.minimumLineSpacing = 10
        layout.itemSize = CGSize(width: 250, height: 150)
        layout.scrollDirection = .horizontal
        
        mostPopularCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        mostPopularCollectionView.dataSource = self
        mostPopularCollectionView.delegate = self
        
        mostPopularCollectionView.register(MostPopularCollectionViewCell.self, forCellWithReuseIdentifier: "configureMostPopularCollectionViewCell")
        
        contentView.addSubview(mostPopularCollectionView)
        mostPopularCollectionView.translatesAutoresizingMaskIntoConstraints = false
        mostPopularCollectionView.showsHorizontalScrollIndicator = false
        
    }
 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView {
        case self.worldCuisineCollectionView :
            return WorldCuisineShared.shared.worldCuisineDatas.count
        case mostPopularCollectionView :
            return MostPopularShared.shared.mostPopularDatas.count
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
            
        case self.worldCuisineCollectionView :
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "configureWorldCuisineCollectionViewCell", for: indexPath) as! WorldCuisineCollectionViewCell
            cell.imageView.image = UIImage(named: WorldCuisineShared.shared.worldCuisineDatas[indexPath.item].imageName)
            cell.label.text = WorldCuisineShared.shared.worldCuisineDatas[indexPath.item].title
            return cell
            
            
        case mostPopularCollectionView :
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "configureMostPopularCollectionViewCell", for: indexPath) as! MostPopularCollectionViewCell
            cell.imageView.image = UIImage(named: MostPopularShared.shared.mostPopularDatas[indexPath.item].imageName)
            cell.label.text = MostPopularShared.shared.mostPopularDatas[indexPath.item].title
            cell.restaurantType.text = MostPopularShared.shared.mostPopularDatas[indexPath.item].restaurantType
            cell.cuisine.text = MostPopularShared.shared.mostPopularDatas[indexPath.item].cuisine
            cell.ranking.text = MostPopularShared.shared.mostPopularDatas[indexPath.item].ranking
            cell.label.font = UIFont.boldSystemFont(ofSize: 18)
            cell.starImage.image = UIImage(named: "star")
            cell.cuisine.font = UIFont.systemFont(ofSize: 12)
            cell.cuisine.textColor = UIColor.gray
            cell.ranking.textColor = UIColor.gray
            cell.restaurantType.textColor = UIColor.gray
            cell.ranking.font = UIFont.systemFont(ofSize: 12)
            cell.ranking.textColor = .orange
            cell.restaurantType.font = UIFont.systemFont(ofSize: 12)
            return cell
            
        default:
            return UICollectionViewCell()
        }
        
    }
    
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = collectionView.frame.width / 2.0
        let cellHeight = collectionView.frame.height / 2.0
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    
}
