//
//  RecentItemTableViewCell.swift
//  ProgrammaticUI
//
//  Created by Emre Özbağdatlı on 20.10.2023.
//

import UIKit

class RecentItemTableViewCell: UITableViewCell {
    
    var cellLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    var restaurantType : UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    var cuisine : UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    var ranking : UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    var cellImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10.0
        return imageView
    }()
    
    var starImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        contentView.addSubview(starImage)
        contentView.addSubview(cellLabel)
        contentView.addSubview(cuisine)
        contentView.addSubview(cellImageView)
        contentView.addSubview(cuisine)
        contentView.addSubview(restaurantType)
        contentView.addSubview(ranking)
        
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupConstraints() {
        
        cellImageView.topAnchor.constraint(equalTo: topAnchor,constant: 10).isActive = true
        cellImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 21).isActive = true
        cellImageView.widthAnchor.constraint(equalToConstant: 75).isActive = true
        cellImageView.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        cellLabel.topAnchor.constraint(equalTo: topAnchor,constant: 10).isActive = true
        cellLabel.leadingAnchor.constraint(equalTo: cellImageView.trailingAnchor, constant: 22).isActive = true
        
        cuisine.topAnchor.constraint(equalTo: cellLabel.bottomAnchor,constant: 3).isActive = true
        cuisine.leadingAnchor.constraint(equalTo: restaurantType.trailingAnchor, constant: 9).isActive = true
        
        restaurantType.topAnchor.constraint(equalTo: cellLabel.bottomAnchor,constant: 3).isActive = true
        restaurantType.leadingAnchor.constraint(equalTo: cellImageView.trailingAnchor, constant: 22).isActive = true
        
        starImage.leadingAnchor.constraint(equalTo: cellImageView.trailingAnchor, constant: 22).isActive = true
        starImage.widthAnchor.constraint(equalToConstant: 14).isActive = true
        starImage.heightAnchor.constraint(equalToConstant: 14).isActive = true
        starImage.topAnchor.constraint(equalTo: restaurantType.bottomAnchor, constant: 5).isActive = true
        
        ranking.leadingAnchor.constraint(equalTo: starImage.trailingAnchor, constant: 6).isActive = true
        ranking.topAnchor.constraint(equalTo: restaurantType.bottomAnchor, constant: 5).isActive = true
        
    }
         
}


