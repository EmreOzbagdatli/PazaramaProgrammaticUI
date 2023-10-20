//
//  WorldCuisineModel.swift
//  ProgrammaticUI
//
//  Created by Emre Özbağdatlı on 19.10.2023.
//

import Foundation

struct WorldCuisineModel {
    var cuisineCountry: String
    var cuisineImage: String
}

let worldCuisineModel1 = WorldCuisineModel(cuisineCountry: "Noir", cuisineImage: "Noir")
let worldCuisineModel2 = WorldCuisineModel(cuisineCountry: "Offers", cuisineImage: "Offers")
let worldCuisineModel3 = WorldCuisineModel(cuisineCountry: "SriLankan", cuisineImage: "SriLankan")
let worldCuisineModel4 = WorldCuisineModel(cuisineCountry: "MinuteByTukTuk", cuisineImage: "korea")
let worldCuisineModel5 = WorldCuisineModel(cuisineCountry: "Italian", cuisineImage: "Italian")
let worldCuisineModel6 = WorldCuisineModel(cuisineCountry: "CafeDeBamba", cuisineImage: "CafeDeBamba")
let worldCuisineModel7 = WorldCuisineModel(cuisineCountry: "BakesByTella", cuisineImage: "BakesByTella")
let worldCuisineModel: [WorldCuisineModel] = [worldCuisineModel1, worldCuisineModel2, worldCuisineModel3, worldCuisineModel4, worldCuisineModel5,worldCuisineModel6,worldCuisineModel7]
