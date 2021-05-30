//
//  Landmark.swift
//  AppleSampleProject
//
//  Created by Nonso Otoh on 2021-05-29.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite : Bool
    
    private var imageName:String
    
    var image:Image{
        Image(imageName)
    }
    
    // Here we are setting the coordinates structure and using it to set
    // the coordinates for a speficic place
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
