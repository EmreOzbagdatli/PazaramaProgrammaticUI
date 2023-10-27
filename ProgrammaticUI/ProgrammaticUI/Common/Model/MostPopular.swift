//
//  MostPopular.swift
//  ProgrammaticUI
//
//  Created by Emre Özbağdatlı on 27.10.2023.
//

import Foundation

class MostPopular {
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

class MostPopularShared {
    static let shared = MostPopularShared(mostPopularDatas: [
        MostPopular(title: "Cafe De Bambaa", imageName: "collection2Pizza", restaurantType: "Cafe",cuisine: "Western Food",ranking: "4.9"),
        MostPopular(title: "Burger By Bella", imageName: "collection2Burger", restaurantType: "Cafe",cuisine: "Western Food",ranking: "4.9"),
        MostPopular(title: "Seafood Harbor", imageName: "fish", restaurantType: "Restaurant", cuisine: "Western Food", ranking: "4.9"),
        
        
                                                           ])
    
    var mostPopularDatas : [MostPopular]
    
    private init(mostPopularDatas: [MostPopular]) {
        self.mostPopularDatas = mostPopularDatas
    }
}
