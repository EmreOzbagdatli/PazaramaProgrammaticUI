//
//  MostPopularCollectionViewCell.swift
//  ProgrammaticUI
//
//  Created by Emre Özbağdatlı on 20.10.2023.
//

import UIKit

class MostPopularCollectionViewCell: UICollectionViewCell {
    
    
    static let identifier = "mostPopularCollectionViewCell"
    
    
    let restaurantImage : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let restaurantTitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let ratingPointLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let restaurantTypeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private func addViews() {
        backgroundColor = .clear
        
        addSubview(restaurantImage)
        restaurantImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        restaurantImage.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        restaurantImage.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        restaurantImage.heightAnchor.constraint(equalTo: restaurantImage.widthAnchor, multiplier: 1).isActive = true
        
        addSubview(restaurantTitleLabel)
        restaurantTitleLabel.topAnchor.constraint(equalTo: restaurantImage.bottomAnchor,constant: 4).isActive = true
        restaurantTitleLabel.leftAnchor.constraint(equalTo: restaurantImage.leftAnchor).isActive = true
        restaurantTitleLabel.rightAnchor.constraint(equalTo: restaurantImage.rightAnchor).isActive = true
        restaurantTitleLabel.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        addSubview(ratingPointLabel)
        ratingPointLabel.topAnchor.constraint(equalTo: restaurantImage.bottomAnchor,constant: 4).isActive = true
        ratingPointLabel.leftAnchor.constraint(equalTo: restaurantImage.leftAnchor).isActive = true
        ratingPointLabel.rightAnchor.constraint(equalTo: restaurantImage.rightAnchor).isActive = true
        ratingPointLabel.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        addSubview(restaurantTypeLabel)
        restaurantTypeLabel.topAnchor.constraint(equalTo: restaurantImage.bottomAnchor,constant: 4).isActive = true
        restaurantTypeLabel.leftAnchor.constraint(equalTo: restaurantImage.leftAnchor).isActive = true
        restaurantTypeLabel.rightAnchor.constraint(equalTo: restaurantImage.rightAnchor).isActive = true
        restaurantTypeLabel.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

