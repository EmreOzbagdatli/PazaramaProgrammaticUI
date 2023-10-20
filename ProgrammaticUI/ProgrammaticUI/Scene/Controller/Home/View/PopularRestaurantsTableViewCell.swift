//
//  PopularRestaurantsTableViewCell.swift
//  ProgrammaticUI
//
//  Created by Emre Özbağdatlı on 19.10.2023.
//

import UIKit

class PopularRestaurantsTableViewCell: UITableViewCell {

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
    
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .clear
        
        addSubview(restaurantImage)
        restaurantImage.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        restaurantImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        restaurantImage.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        restaurantImage.heightAnchor.constraint(equalToConstant: 190).isActive = true
        restaurantImage.widthAnchor.constraint(equalToConstant: contentView.frame.size.width).isActive = true
        
        addSubview(restaurantTitleLabel)
        restaurantTitleLabel.topAnchor.constraint(equalTo: restaurantImage.bottomAnchor, constant: 10).isActive = true
        restaurantTitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 10).isActive = true
        
        addSubview(ratingPointLabel)
        ratingPointLabel.topAnchor.constraint(equalTo: restaurantTitleLabel.bottomAnchor,constant: 10).isActive = true
        ratingPointLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        
        addSubview(restaurantTypeLabel)
        restaurantTypeLabel.topAnchor.constraint(equalTo: restaurantTitleLabel.bottomAnchor, constant: 10).isActive = true
        restaurantTypeLabel.leadingAnchor.constraint(equalTo: ratingPointLabel.trailingAnchor).isActive = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
