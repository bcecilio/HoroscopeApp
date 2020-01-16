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
    static let name = "name"
}

class UserSettings {
    
    private init() {}
    
    private let standard = UserDefaults.standard
    
    static let shared = UserSettings()
    
    func updateSign(with unit: Sign) {
        standard.set(unit.rawValue, forKey: PreferenceKey.sign)
    }
    
    func getSign() -> Sign? {
        guard let sunSign = standard.object(forKey: PreferenceKey.sign) as? String else {
            return nil
        }
        return Sign(rawValue: sunSign)
    }
}
