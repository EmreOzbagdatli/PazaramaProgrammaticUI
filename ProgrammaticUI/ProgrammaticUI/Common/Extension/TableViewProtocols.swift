//
//  TableViewProtocols.swift
//  ProgrammaticUI
//
//  Created by Emre Özbağdatlı on 27.10.2023.
//

import Foundation
import UIKit


extension HomeVC : UITableViewDelegate, UITableViewDataSource {
    
    func configurePopularTableView(){
        
        popularRestaurantsTableView.dataSource = self
        popularRestaurantsTableView.delegate = self
        popularRestaurantsTableView.register(PopularRestaurantsTableViewCell.self, forCellReuseIdentifier: "popularRestaurantsTableViewCell")
        
        contentView.addSubview(popularRestaurantsTableView)
        popularRestaurantsTableView.translatesAutoresizingMaskIntoConstraints = false
        popularRestaurantsTableView.separatorStyle = .none
    }
    
   func configureRecentItemTableView(){
        
        recentItemTableView.delegate = self
        recentItemTableView.dataSource = self
        recentItemTableView.register(RecentItemTableViewCell.self, forCellReuseIdentifier: "RecentItemTableViewCell")
        
        contentView.addSubview(recentItemTableView)
        recentItemTableView.translatesAutoresizingMaskIntoConstraints = false
        recentItemTableView.separatorStyle = .none
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch tableView {
        case self.popularRestaurantsTableView :
            return PopularRestaurantsShared.shared.popularRestaurantsDatas.count
        case recentItemTableView :
            return RecentItemsShared.shared.recentItemsDatas.count
        default:
            return 0
        }
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch tableView {
        case self.popularRestaurantsTableView :
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "popularRestaurantsTableViewCell", for: indexPath) as! PopularRestaurantsTableViewCell
            cell.cellLabel.text = PopularRestaurantsShared.shared.popularRestaurantsDatas[indexPath.row].title
            cell.cellLabel.font = UIFont.boldSystemFont(ofSize: 18.0)
            cell.cellLabel.textColor = UIColor.darkGray
            cell.cellLabelSecond.text = "(124 ratings) Cafe Western"
            cell.cellLabelSecond.font = UIFont.systemFont(ofSize: 12)
            cell.cellLabelSecond.textColor = UIColor.gray
            cell.cellImageView.image = UIImage(named: PopularRestaurantsShared.shared.popularRestaurantsDatas[indexPath.row].imageName)
            cell.starImage.image = UIImage(named: "star")
            cell.starImage.tintColor = .black
            cell.rankingLabel.textColor = .orange
            cell.rankingLabel.font = UIFont.systemFont(ofSize: 13)
            cell.rankingLabel.text = PopularRestaurantsShared.shared.popularRestaurantsDatas[indexPath.row].ranking
            
            return cell
            
        case recentItemTableView :
            
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "RecentItemTableViewCell", for: indexPath) as! RecentItemTableViewCell
            cell.cellLabel.text = RecentItemsShared.shared.recentItemsDatas[indexPath.row].title
            cell.restaurantType.text = RecentItemsShared.shared.recentItemsDatas[indexPath.row].restaurantType
            cell.cuisine.text = RecentItemsShared.shared.recentItemsDatas[indexPath.row].cuisine
            cell.ranking.text = RecentItemsShared.shared.recentItemsDatas[indexPath.row].ranking
            cell.cellImageView.image = UIImage(named: RecentItemsShared.shared.recentItemsDatas[indexPath.row].imageName)
            cell.cellLabel.font = UIFont.boldSystemFont(ofSize: 18.0)
            cell.cuisine.font = UIFont.systemFont(ofSize: 12)
            cell.cuisine.textColor = UIColor.gray
            cell.ranking.textColor = UIColor.gray
            cell.restaurantType.textColor = UIColor.gray
            cell.ranking.font = UIFont.systemFont(ofSize: 12)
            cell.ranking.textColor = .orange
            cell.restaurantType.font = UIFont.systemFont(ofSize: 12)
            cell.starImage.image = UIImage(named: "star")
            return cell
            
            
            
        default:
            return UITableViewCell()
        }
        
        
    }
    
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch tableView {
        case self.popularRestaurantsTableView :
            return 295
        case recentItemTableView :
            return 95
        default:
            return 0
        }
    }
}

