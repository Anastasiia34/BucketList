//
//  Location.swift
//  BucketList
//
//  Created by Анастасия Стрекалова on 28.01.2022.
//

import Foundation
import CoreLocation

struct Location: Identifiable, Codable, Equatable {
    var id: UUID
    var name: String
    var description: String
    let latitude: Double
    let longtitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longtitude)
    }
    
    static let example = Location(id: UUID(), name: "Buchinhem Palace", description: "Where queen Elizabeth lives with her dogs", latitude: 51.501, longtitude: -0.141)
    
    static func ==(lhs: Location, rhs: Location) -> Bool {
        rhs.id == lhs.id
    }
}
