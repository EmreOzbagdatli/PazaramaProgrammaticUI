//
//  RecentItems.swift
//  ProgrammaticUI
//
//  Created by Emre Özbağdatlı on 27.10.2023.
//

import Foundation

class RecentItems {
    var title: String
    var imageName: String
    var restaurantType : String
    var cuisine : String
    var ranking : String
    
    
    init(title: String, imageName: String,restaurantType:String, cuisine: String, ranking: String) {
        self.title = title
        self.imageName = imageName
        self.restaurantType = restaurantType
        self.cuisine = cuisine
        self.ranking = ranking
    }
}

class RecentItemsShared {
    static let shared = RecentItemsShared(recentItemsDatas: [
        RecentItems(title: "Mulbery Pizza By Josh", imageName: "mulberryPizza", restaurantType: "Cafe",cuisine: "Western Food",ranking: "4.9"),
        RecentItems(title: "Barita", imageName: "Barita", restaurantType: "Cafe",cuisine: "Western Food",ranking: "4.9"),
        RecentItems(title: "Pizza Rush Hour", imageName: "PizzaRush", restaurantType: "Cafe",cuisine: "Western Food",ranking: "4.9"),
                                                                    ])
    
    var recentItemsDatas : [RecentItems]
    
    private init(recentItemsDatas: [RecentItems]) {
        self.recentItemsDatas = recentItemsDatas
    }
}
