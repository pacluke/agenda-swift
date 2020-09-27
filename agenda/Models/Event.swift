//
//  Event.swift
//  agenda
//
//  Created by Lucas Flores on 27/09/20.
//  Copyright © 2020 lsflores. All rights reserved.
//

import Foundation

struct Event: Decodable {
    var people: [People]?
    var date: TimeInterval
    var info: String
    var image: String
    var longitude: Double
    var latitude: Double
    var price: Float
    var title: String
    var id: String
    
    enum CodingKeys: String, CodingKey {
        case people
        case date
        case info = "description"
        case image
        case longitude
        case latitude
        case price
        case title
        case id
    }
}
