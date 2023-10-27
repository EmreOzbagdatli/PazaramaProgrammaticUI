//
//  WorldCuisineModel.swift
//  ProgrammaticUI
//
//  Created by Emre Özbağdatlı on 19.10.2023.
//


import Foundation

class PopularRestaurants {
    var title: String
    var imageName: String
    var ranking : String
    
    
    init(title: String, imageName: String, ranking: String) {
        self.title = title
        self.imageName = imageName
        self.ranking = ranking
        
    }
}

class PopularRestaurantsShared {
    static let shared = PopularRestaurantsShared(PopularRestaurantsDatas: [
        PopularRestaurants(title: "Minute by Tuk Tuk", imageName: "pizza", ranking: "4.9"),
        PopularRestaurants(title: "Cafe de Noir", imageName: "breakfast", ranking: "4.9"),
        PopularRestaurants(title: "Bakes By Tella", imageName: "cafe", ranking: "4.9"),
        PopularRestaurants(title: "Kebap House", imageName: "kebap", ranking: "4.9"),
        PopularRestaurants(title: "Golden Fork", imageName: "healthyFood", ranking: "4.9")])
    
    var popularRestaurantsDatas : [PopularRestaurants]
    
    private init(PopularRestaurantsDatas: [PopularRestaurants]) {
        self.popularRestaurantsDatas = PopularRestaurantsDatas
    }
}
