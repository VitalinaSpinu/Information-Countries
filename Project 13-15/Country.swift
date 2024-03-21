//
//  Country.swift
//  Project 13-15
//
//  Created by Dmitrii Vrabie on 17.03.2024.
//

import UIKit
struct Countries: Codable {
    let countries: [Country]
}
struct Country: Codable {
    var name: String
    var capital: String
    var population: Double
    var currency: String
}
