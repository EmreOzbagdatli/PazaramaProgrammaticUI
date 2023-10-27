//
//  PopularRestaurantModel.swift
//  ProgrammaticUI
//
//  Created by Emre Özbağdatlı on 19.10.2023.
//

import Foundation

class WorldCuisine {
    var title: String
    var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}

class WorldCuisineShared {
    static let shared = WorldCuisineShared(worldCuisineDatas: [
        WorldCuisine(title: "Offers", imageName: "offers"),
        WorldCuisine(title: "Sri Lankan", imageName: "SriLankan"),
        WorldCuisine(title: "Italian", imageName: "Italian"),
        WorldCuisine(title: "Indian", imageName: "indian"),
        WorldCuisine(title: "Turkish", imageName: "turkish"),
        WorldCuisine(title: "China", imageName: "china"),
        
       
    ])
    
    var worldCuisineDatas : [WorldCuisine]
    
    private init(worldCuisineDatas: [WorldCuisine]) {
        self.worldCuisineDatas = worldCuisineDatas
    }
}
