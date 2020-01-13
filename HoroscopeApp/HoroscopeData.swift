//
//  HoroscopeData.swift
//  HoroscopeApp
//
//  Created by Brendon Cecilio on 1/13/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import Foundation

struct Horoscope: Codable {
    let sunsign: String
    let date, horoscope: String
    let meta: Meta
}

struct Meta: Codable {
    let mood, keywords, intensity: String
}
