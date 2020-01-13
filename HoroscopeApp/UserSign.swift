//
//  UserSign.swift
//  HoroscopeApp
//
//  Created by Brendon Cecilio on 1/13/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import Foundation

enum Sign: String {
    case scorpio = "Scorpio"
    case gemini = "Gemini"
    case aries = "Aries"
    case pisces = "Pisces"
    case capricorn = "Capricorn"
    case sagittarius = "Sagittarius"
    case taurus = "Taurus"
    case cancer = "Cancer"
    case leo = "Leo"
    case aquarius = "Aquarius"
}

struct PreferenceKey {
    static let sign = "sign"
}

struct Name {
    var name: String
    var sign: String
}

class UserSettings {
    
    private init() {}
    
    static let standard = UserDefaults.standard
    
    let shared = UserSettings()
    
    func updateSign(with unit: Sign) {
        UserSettings.standard.set(unit.rawValue, forKey: PreferenceKey.sign)
    }
}
