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
        stackView.spacing = 4
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
        searchBar.text = "Search"
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

    var worldCuisineCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()

        setupWorldCuisineCollectionView()
        setupLabel()

        scrollView.addSubview(searchBar)

    }

    private func setupUI() {
        view.addSubview(scrollView)
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true


        scrollView.addSubview(stackView)
        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 16).isActive = true
        stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -8).isActive = true
        stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true


        stackView.addSubview(deliveryLabel)
        deliveryLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10).isActive = true
        deliveryLabel.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 10).isActive = true

        stackView.addSubview(placeLabel)
        placeLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10).isActive = true
        placeLabel.topAnchor.constraint(equalTo: deliveryLabel.bottomAnchor, constant: 2).isActive = true

        scrollView.addSubview(searchBar)
        searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        searchBar.topAnchor.constraint(equalTo: placeLabel.bottomAnchor, constant: 16).isActive = true
        searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        searchBar.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }

    private func setupLabel() {

        stackView.addSubview(popularRestaurantLabel)
        popularRestaurantLabel.topAnchor.constraint(equalTo: worldCuisineCollectionView.bottomAnchor, constant: 10).isActive = true
        popularRestaurantLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true

        stackView.addSubview(viewAllLabel)
        viewAllLabel.topAnchor.constraint(equalTo: worldCuisineCollectionView.bottomAnchor, constant: 10).isActive = true
        viewAllLabel.leadingAnchor.constraint(equalTo: popularRestaurantLabel.trailingAnchor, constant: 56).isActive = true

    }

    private func setupWorldCuisineCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 100, height: 140)
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

        scrollView.addSubview(worldCuisineCollectionView)

        worldCuisineCollectionView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 16).isActive = true

        worldCuisineCollectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        worldCuisineCollectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        worldCuisineCollectionView.heightAnchor.constraint(equalToConstant: 160).isActive = true
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
