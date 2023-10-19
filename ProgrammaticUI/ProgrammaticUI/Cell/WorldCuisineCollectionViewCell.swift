//
//  WorldCuisineCollectionViewCell.swift
//  ProgrammaticUI
//
//  Created by Emre Özbağdatlı on 19.10.2023.
//

import UIKit

class WorldCuisineCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "worldCuisineCollectionViewCell"
    
    let worldCuisineImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 8
        imageView.backgroundColor = UIColor(named: "PlaceholderFont")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let cuisineCountryLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func addViews() {
        backgroundColor = .clear
        
        addSubview(worldCuisineImageView)
        worldCuisineImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        worldCuisineImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        worldCuisineImageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        worldCuisineImageView.heightAnchor.constraint(equalTo: worldCuisineImageView.widthAnchor, multiplier: 1).isActive = true
        
        addSubview(cuisineCountryLabel)
        cuisineCountryLabel.topAnchor.constraint(equalTo: worldCuisineImageView.bottomAnchor,constant: 4).isActive = true
        cuisineCountryLabel.leftAnchor.constraint(equalTo: worldCuisineImageView.leftAnchor).isActive = true
        cuisineCountryLabel.rightAnchor.constraint(equalTo: worldCuisineImageView.rightAnchor).isActive = true
        cuisineCountryLabel.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

    
    

