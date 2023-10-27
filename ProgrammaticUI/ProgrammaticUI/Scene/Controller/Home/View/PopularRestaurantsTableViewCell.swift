//
//  PopularRestaurantsTableViewCell.swift
//  ProgrammaticUI
//
//  Created by Emre Özbağdatlı on 19.10.2023.
//

import UIKit

class PopularRestaurantsTableViewCell: UITableViewCell {
 
    var cellLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    
    var cellLabelSecond: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    
    var rankingLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    
    var cellImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
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
        contentView.addSubview(cellLabelSecond)
        contentView.addSubview(cellImageView)
        contentView.addSubview(rankingLabel)
       
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupConstraints() {
       
        cellImageView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        cellImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        cellImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        cellImageView.widthAnchor.constraint(equalToConstant: 375).isActive = true
        cellImageView.heightAnchor.constraint(equalToConstant: 193).isActive = true
        cellImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
         
        cellLabel.topAnchor.constraint(equalTo: cellImageView.bottomAnchor, constant: 10).isActive = true
        cellLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 21).isActive = true
        cellLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -31).isActive = true
        
        cellLabelSecond.topAnchor.constraint(equalTo: cellImageView.bottomAnchor, constant: 35).isActive = true
        cellLabelSecond.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 58).isActive = true
        cellLabelSecond.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -31).isActive = true
        
        starImage.topAnchor.constraint(equalTo: cellImageView.bottomAnchor,constant: 35).isActive = true
        starImage.trailingAnchor.constraint(equalTo: cellLabelSecond.leadingAnchor, constant: -25).isActive = true
        starImage.widthAnchor.constraint(equalToConstant: 14).isActive = true
        starImage.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        rankingLabel.topAnchor.constraint(equalTo: cellImageView.bottomAnchor, constant: 32).isActive = true
        rankingLabel.trailingAnchor.constraint(equalTo: cellLabelSecond.leadingAnchor, constant: -3).isActive = true
        rankingLabel.widthAnchor.constraint(equalToConstant: 20).isActive = true
        rankingLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
    
}


