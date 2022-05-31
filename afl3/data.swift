//
//  food.swift
//  afl3
//
//  Created by atallah dafa on 29/05/22.
//

import Foundation
import Foundation
import CoreLocation
import SwiftUI
import Combine

struct appData: Hashable,Codable, Identifiable{
    var id: Int
    var name: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable{
        case food = "food"
        case shopping = "shopping"
        case monument = "monument"
    }
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
