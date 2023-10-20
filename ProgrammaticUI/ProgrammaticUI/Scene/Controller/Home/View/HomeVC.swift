//
//  HomeVC.swift
//  ProgrammaticUI
//
//  Created by Emre Özbağdatlı on 19.10.2023.
//

import UIKit

class HomeVC: UIViewController {

    private let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.isScrollEnabled = true
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        return view
    }()

    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .white
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        return stackView
    }()

    private let deliveryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Delivering to"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 12, weight: .light)
        label.textColor = .gray
        return label
    }()

    private let placeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Current Location  ▼"
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.textColor = .systemGray
        label.textAlignment = .left
        return label
    }()

    private let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.text = "Search Food"
        searchBar.searchBarStyle = .minimal
        searchBar.barTintColor = .blue
        searchBar.tintColor = .blue
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }()

    private let popularRestaurantLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Popular Restaurants"
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        label.textColor = .systemGray
        label.textAlignment = .left
        return label
    }()

    private let viewAllLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "View All"
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .orange
        label.textAlignment = .right
        return label
    }()
    
    private let mostPopularLabel: UILabel = {
       let label = UILabel()
        label.text = "Most Popular"
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.textColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let secondViewAllLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "View All"
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .orange
        label.textAlignment = .right
        return label
    }()
    
    private let recentItemsLabel: UILabel = {
       let label = UILabel()
        label.text = "Recent Items"
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.textColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let thirdViewAllLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "View All"
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .orange
        label.textAlignment = .right
        return label
    }()
   
    var worldCuisineCollectionView: UICollectionView!
    var popularRestaurantTableView: UITableView!
    var mostPopularCollectionView: UICollectionView!
    var recentItemsTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
  
        setupUI()
        setupWorldCuisineCollectionView()
        setupLabel()
//        setupPopularRestaurantTableView()
//        setupMostPopularLabel()
//        setupRecentItemsLabel()
//        setupRecentItemTableView()

    }

    private func setupUI() {
        view.addSubview(scrollView)
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        scrollView.heightAnchor.constraint(equalToConstant: view.frame.size.height).isActive = true
        scrollView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true

        scrollView.addSubview(stackView)
        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true

        stackView.addSubview(deliveryLabel)
        deliveryLabel.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 10).isActive = true
        deliveryLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 20).isActive = true
        deliveryLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        deliveryLabel.widthAnchor.constraint(equalToConstant: 250).isActive = true

        stackView.addSubview(placeLabel)
        placeLabel.topAnchor.constraint(equalTo: deliveryLabel.bottomAnchor, constant: 10).isActive = true
        placeLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 20).isActive = true

        stackView.addSubview(searchBar)
        searchBar.topAnchor.constraint(equalTo: placeLabel.bottomAnchor, constant: 10).isActive = true
        searchBar.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 20).isActive = true
        searchBar.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -20).isActive = true
        
       
    }

    private func setupLabel() {

        stackView.addSubview(popularRestaurantLabel)
        popularRestaurantLabel.topAnchor.constraint(equalTo: worldCuisineCollectionView.bottomAnchor, constant: 50).isActive = true
        popularRestaurantLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 20).isActive = true

        stackView.addSubview(viewAllLabel)
        viewAllLabel.leadingAnchor.constraint(equalTo: popularRestaurantLabel.trailingAnchor, constant: 90).isActive = true
        viewAllLabel.topAnchor.constraint(equalTo: worldCuisineCollectionView.bottomAnchor, constant: 45).isActive = true

    }

    private func setupMostPopularLabel(){
        
        stackView.addSubview(mostPopularLabel)
        mostPopularLabel.topAnchor.constraint(equalTo: popularRestaurantTableView.bottomAnchor, constant: 50).isActive = true
        mostPopularLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 20).isActive = true
        
        stackView.addSubview(secondViewAllLabel)
        secondViewAllLabel.leadingAnchor.constraint(equalTo: mostPopularLabel.trailingAnchor,constant: 190).isActive = true
        secondViewAllLabel.topAnchor.constraint(equalTo: popularRestaurantTableView.bottomAnchor, constant: 45).isActive = true
        
    }
    
    private func setupRecentItemsLabel(){
        
        stackView.addSubview(recentItemsLabel)
        popularRestaurantLabel.topAnchor.constraint(equalTo: recentItemsTableView.bottomAnchor, constant: 50).isActive = true
        popularRestaurantLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 20).isActive = true
        
        stackView.addSubview(thirdViewAllLabel)
        viewAllLabel.leadingAnchor.constraint(equalTo: recentItemsLabel.trailingAnchor, constant: 90).isActive = true
        viewAllLabel.topAnchor.constraint(equalTo: recentItemsTableView.bottomAnchor, constant: 45).isActive = true
        
    }
    
    private func setupWorldCuisineCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 100, height: 150)
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .horizontal

        worldCuisineCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        worldCuisineCollectionView.translatesAutoresizingMaskIntoConstraints = false
        worldCuisineCollectionView.backgroundColor = .white
        worldCuisineCollectionView.showsVerticalScrollIndicator = false
        worldCuisineCollectionView.showsHorizontalScrollIndicator = false
        worldCuisineCollectionView.delegate = self
        worldCuisineCollectionView.dataSource = self
        worldCuisineCollectionView.register(WorldCuisineCollectionViewCell.self, forCellWithReuseIdentifier: WorldCuisineCollectionViewCell.identifier)

        stackView.addSubview(worldCuisineCollectionView)

        worldCuisineCollectionView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 10).isActive = true
        worldCuisineCollectionView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        worldCuisineCollectionView.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        worldCuisineCollectionView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    private func setupPopularRestaurantTableView() {
        
        popularRestaurantTableView = UITableView()
        popularRestaurantTableView.translatesAutoresizingMaskIntoConstraints = false
        popularRestaurantTableView.backgroundColor = .clear
        popularRestaurantTableView.delegate = self
        popularRestaurantTableView.dataSource = self
        popularRestaurantTableView.register(PopularRestaurantsTableViewCell.self, forCellReuseIdentifier: "cell")

        stackView.addSubview(popularRestaurantTableView)
        
        popularRestaurantTableView.topAnchor.constraint(equalTo: popularRestaurantLabel.bottomAnchor, constant: 10).isActive = true
        popularRestaurantTableView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        popularRestaurantTableView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        popularRestaurantTableView.heightAnchor.constraint(equalToConstant: 800).isActive = true
        
    }

    private func setupMostPopularCollectionView(){

        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 100, height: 150)
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .horizontal

        mostPopularCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        mostPopularCollectionView.translatesAutoresizingMaskIntoConstraints = false
        mostPopularCollectionView.backgroundColor = .white
        mostPopularCollectionView.showsVerticalScrollIndicator = false
        mostPopularCollectionView.showsHorizontalScrollIndicator = false
        mostPopularCollectionView.delegate = self
        mostPopularCollectionView.dataSource = self
        mostPopularCollectionView.register(MostPopularCollectionViewCell.self, forCellWithReuseIdentifier: MostPopularCollectionViewCell.identifier)

        stackView.addSubview(mostPopularCollectionView)

        mostPopularCollectionView.topAnchor.constraint(equalTo: mostPopularLabel.bottomAnchor, constant: 10).isActive = true
        mostPopularCollectionView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        mostPopularCollectionView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        mostPopularCollectionView.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        mostPopularCollectionView.heightAnchor.constraint(equalToConstant: 190).isActive = true
    }
    
    private func setupRecentItemTableView(){
        
        
        recentItemsTableView = UITableView()
        recentItemsTableView.translatesAutoresizingMaskIntoConstraints = false
        recentItemsTableView.backgroundColor = .clear
        recentItemsTableView.delegate = self
        recentItemsTableView.dataSource = self
        recentItemsTableView.register(RecentItemTableViewCell.self, forCellReuseIdentifier: "cell")

        stackView.addSubview(recentItemsTableView)
        
        recentItemsTableView.topAnchor.constraint(equalTo: recentItemsLabel.bottomAnchor, constant: 10).isActive = true
        recentItemsTableView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        recentItemsTableView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        recentItemsTableView.heightAnchor.constraint(equalToConstant: 800).isActive = true
    }
    
}

extension HomeVC: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Search text changed: \(searchText)")
    }
}

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return worldCuisineModel.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: WorldCuisineCollectionViewCell.identifier, for: indexPath) as! WorldCuisineCollectionViewCell
        let worldCuisine = worldCuisineModel[indexPath.row]
        cell.worldCuisineImageView.image = UIImage(named: worldCuisine.cuisineImage)
        cell.cuisineCountryLabel.text = worldCuisine.cuisineCountry
        return cell
    }
    
}
extension HomeVC: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return popularRestaurants.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PopularRestaurantsTableViewCell
        let restaurant = popularRestaurants[indexPath.row]
        cell.restaurantImage.image = UIImage(named: restaurant.restaurantImage)
        cell.restaurantTitleLabel.text = restaurant.restaurantTitle
        cell.ratingPointLabel.text = restaurant.raitingPoint
        cell.restaurantTypeLabel.text = restaurant.restaurantType

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
        
}
