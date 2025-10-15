//
//  WeatherData.swift
//  swift practice
//
//  Created by mohsen tabasi on 10/14/25.
//  Copyright © 2025 mstf. All rights reserved.
//

import Foundation

struct WeatherData : Decodable {
    let name : String
    let main : Main
    let weather : [Weather]
}

struct Main : Decodable{
    let temp : Double
}

struct Weather : Decodable {
    let description : String
    let id : Int
}
