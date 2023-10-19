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

let worldCuisineModel1 = WorldCuisineModel(cuisineCountry: "america", cuisineImage: "america")
let worldCuisineModel2 = WorldCuisineModel(cuisineCountry: "italy", cuisineImage: "italy")
let worldCuisineModel3 = WorldCuisineModel(cuisineCountry: "india", cuisineImage: "india")
let worldCuisineModel4 = WorldCuisineModel(cuisineCountry: "korea", cuisineImage: "korea")
let worldCuisineModel5 = WorldCuisineModel(cuisineCountry: "china", cuisineImage: "china")
let worldCuisineModel: [WorldCuisineModel] = [worldCuisineModel1, worldCuisineModel2, worldCuisineModel3, worldCuisineModel4, worldCuisineModel5]
