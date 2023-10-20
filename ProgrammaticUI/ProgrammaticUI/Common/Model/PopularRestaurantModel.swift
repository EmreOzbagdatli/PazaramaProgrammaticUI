//
//  PopularRestaurantModel.swift
//  ProgrammaticUI
//
//  Created by Emre Özbağdatlı on 19.10.2023.
//

import Foundation

struct PopularRestaurantModel {
    
    let restaurantImage: String
    let restaurantTitle: String
    let raitingPoint: String
    let restaurantType: String
}


let popularRestaurants: [PopularRestaurantModel] = [
    PopularRestaurantModel(restaurantImage: "america", restaurantTitle: "Minute By Tuk Tuk", raitingPoint: "124 ratings", restaurantType: "Western Food"),
    PopularRestaurantModel(restaurantImage: "india", restaurantTitle: "Cafe de Noir", raitingPoint: "124 ratings", restaurantType: "Western Food"),
    PopularRestaurantModel(restaurantImage: "china", restaurantTitle: "Bakes By Tella", raitingPoint: "124 ratings", restaurantType: "Western Food"),
    PopularRestaurantModel(restaurantImage: "korea", restaurantTitle: "Bakes By Tella", raitingPoint: "124 ratings", restaurantType: "Western Food"),
    PopularRestaurantModel(restaurantImage: "italy", restaurantTitle: "Bakes By Tella", raitingPoint: "124 ratings", restaurantType: "Western Food")
]
