//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by 1 on 20/12/2021.
//

import Foundation

struct Place {
    var name: String
    var location: String
    var type: String
    var imageName: String
    
    static let restaurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Dastarhan",
        "Indochina", "H.O", "Balkan Grill", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Tasty stories",
        "Classic", "Love&Life", "Shock", "Bochka"
    ]
    
    static func getPlaces() -> [Place] {
        var places = [Place]()
        
        for restaurantName in restaurantNames {
            places.append(Place(name: restaurantName, location: "Poznan", type: "Restauracja", imageName: restaurantName))
        }
        
        return places
    }
}
