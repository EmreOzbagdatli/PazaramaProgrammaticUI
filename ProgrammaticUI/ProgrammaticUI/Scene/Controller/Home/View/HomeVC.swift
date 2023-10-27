//
//  HomeVC.swift
//  ProgrammaticUI
//
//  Created by Emre Özbağdatlı on 19.10.2023.
//

import UIKit

class HomeVC: UIViewController {
    
  let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.backgroundColor = .white
        return scroll
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    
    let popularRestaurantsTableView: UITableView = {
        let table = UITableView()
        return table
    }()
    
    
    let recentItemTableView: UITableView = {
        let table = UITableView()
        return table
    }()

    let recentItemsLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.boldSystemFont(ofSize: 28)
        lbl.text = "Recent Items"
        lbl.sizeToFit()
        return lbl
    }()
    
    let mostPopularLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.boldSystemFont(ofSize: 22)
        lbl.text = "Most Popular"
        lbl.sizeToFit()
        return lbl
    }()
    
    let popularRestaurantsLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 24)
        lbl.text = "Popular Restaurants"
        lbl.sizeToFit()
        return lbl
    }()
    
    
    let currentLocationLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 20)
        lbl.text = "Current Location"
        lbl.sizeToFit()
        return lbl
    }()
    
    
    let deliveringToLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 14)
        lbl.textColor = UIColor.systemGray
        lbl.text = "Delivering to"
        lbl.sizeToFit()
        return lbl
    }()
    
    let downBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "chevron.down"), for: .normal)
        btn.tintColor = .orange
        return btn
    }()
    
    let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.searchBarStyle = .default
        searchBar.placeholder = "Search food"
        searchBar.backgroundImage = UIImage()
        searchBar.isTranslucent = false

        return searchBar
    }()

    var viewAll : UILabel = {
        let label = UILabel()
        label.text = "View all"
        label.textColor = UIColor.orange
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    var viewAllSecond : UILabel = {
        let label = UILabel()
        label.text = "View all"
        label.textColor = UIColor.orange
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    var viewAllThird : UILabel = {
        let label = UILabel()
        label.text = "View all"
        label.textColor = UIColor.orange
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    var worldCuisineCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 20
        layout.minimumLineSpacing = 20
        layout.itemSize = CGSize(width: 88, height: 114)
        layout.scrollDirection = .horizontal
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return collection
    }()
    
    
    var mostPopularCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 20
        layout.minimumLineSpacing = 10
        layout.itemSize = CGSize(width: 250, height: 150)
        layout.scrollDirection = .horizontal
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return collection
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureWorldCuisineCollectionView()
        configureMostPopularCollectionView()
        configurePopularTableView()
        configureRecentItemTableView()
        setupUI()
        
    }
    
    
    private func setupUI() {
        self.view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        self.scrollView.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(viewAll)
        viewAll.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(viewAllSecond)
        viewAllSecond.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(viewAllThird)
        viewAllThird.translatesAutoresizingMaskIntoConstraints = false
          
        contentView.addSubview(recentItemsLabel)
        recentItemsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(mostPopularLabel)
        mostPopularLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(popularRestaurantsLabel)
        popularRestaurantsLabel.translatesAutoresizingMaskIntoConstraints = false
 
        contentView.addSubview(searchBar)
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(currentLocationLabel)
        currentLocationLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(deliveringToLabel)
        deliveringToLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(downBtn)
        downBtn.translatesAutoresizingMaskIntoConstraints = false
        
        let height = contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        height.isActive = true
        height.priority = UILayoutPriority(100)
    
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            
            contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 2.33),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
 
            worldCuisineCollectionView.heightAnchor.constraint(equalToConstant: 135),
            worldCuisineCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            worldCuisineCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 10),
            worldCuisineCollectionView.widthAnchor.constraint(equalToConstant: 400),
            worldCuisineCollectionView.bottomAnchor.constraint(equalTo: popularRestaurantsLabel.topAnchor, constant: -30),
            
            popularRestaurantsTableView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            popularRestaurantsTableView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            popularRestaurantsTableView.heightAnchor.constraint(equalToConstant: 880),
            popularRestaurantsTableView.bottomAnchor.constraint(equalTo: mostPopularLabel.bottomAnchor,constant: -45),
            
            mostPopularCollectionView.heightAnchor.constraint(equalToConstant: 240),
            mostPopularCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            mostPopularCollectionView.widthAnchor.constraint(equalToConstant: 400),
            mostPopularCollectionView.bottomAnchor.constraint(equalTo: recentItemsLabel.topAnchor, constant: -15),
            
            recentItemTableView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            recentItemTableView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            recentItemTableView.heightAnchor.constraint(equalToConstant: 285),
            recentItemTableView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -20),
            
            recentItemsLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 20),
            recentItemsLabel.bottomAnchor.constraint(equalTo: recentItemTableView.topAnchor,constant: -20),
            
            viewAllThird.leadingAnchor.constraint(equalTo: recentItemsLabel.trailingAnchor,constant: 65),
            viewAllThird.bottomAnchor.constraint(equalTo: recentItemTableView.topAnchor,constant: -50),
            
            mostPopularLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 20),
            mostPopularLabel.bottomAnchor.constraint(equalTo: mostPopularCollectionView.topAnchor,constant: 5),
          
            popularRestaurantsLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 20),
            popularRestaurantsLabel.bottomAnchor.constraint(equalTo: popularRestaurantsTableView.topAnchor,constant: -20),
            
            viewAll.leadingAnchor.constraint(equalTo: popularRestaurantsLabel.trailingAnchor,constant: 65),
            viewAll.bottomAnchor.constraint(equalTo: popularRestaurantsTableView.topAnchor,constant: -25),
            
            viewAllSecond.leadingAnchor.constraint(equalTo: mostPopularLabel.trailingAnchor,constant: 155),
            viewAllSecond.bottomAnchor.constraint(equalTo: mostPopularCollectionView.topAnchor),
            
            currentLocationLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 20),
            currentLocationLabel.bottomAnchor.constraint(equalTo: searchBar.topAnchor,constant: -45),
               
            deliveringToLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 20),
            deliveringToLabel.bottomAnchor.constraint(equalTo: currentLocationLabel.topAnchor,constant: -5),
            deliveringToLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            
            downBtn.leadingAnchor.constraint(equalTo: currentLocationLabel.trailingAnchor,constant: 20),
            downBtn.bottomAnchor.constraint(equalTo: searchBar.topAnchor,constant: -45),
                    
            searchBar.heightAnchor.constraint(equalToConstant: 45),
            searchBar.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 20),
            searchBar.widthAnchor.constraint(equalToConstant: 350),
            searchBar.topAnchor.constraint(equalTo: currentLocationLabel.bottomAnchor, constant: 5),
            searchBar.bottomAnchor.constraint(equalTo: worldCuisineCollectionView.topAnchor,constant: -20),
       
        ])
    }
    
}





