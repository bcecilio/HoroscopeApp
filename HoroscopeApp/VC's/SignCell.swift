//
//  SignCell.swift
//  HoroscopeApp
//
//  Created by Brendon Cecilio on 1/15/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit

class SignCell: UICollectionViewCell {
    
    @IBOutlet weak var signImage: UIImageView!
    @IBOutlet weak var signLabel: UILabel!
    
    func configureCell(sunSign: Horoscope) {
        signLabel.text = sunSign.sunsign
        
        if signLabel.text == "Scorpio" {
            signImage.image = #imageLiteral(resourceName: "Scorpio")
        } else if signLabel.text == "Sagittarius" {
            signImage.image = #imageLiteral(resourceName: "Sagittarius")
        } else if signLabel.text == "Cancer" {
            signImage.image = #imageLiteral(resourceName: "Cancer")
        } else if signLabel.text == "Gemini" {
            signImage.image = #imageLiteral(resourceName: "Gemini")
        } else if signLabel.text == "Leo" {
            signImage.image = #imageLiteral(resourceName: "Leo")
        } else if signLabel.text == "Libra" {
            signImage.image = #imageLiteral(resourceName: "Libra")
        } else if signLabel.text == "Aries" {
            signImage.image = #imageLiteral(resourceName: "Aries")
        } else if signLabel.text == "Pisces" {
            signImage.image = #imageLiteral(resourceName: "Pisces")
        } else if signLabel.text == "Taurus" {
            signImage.image = #imageLiteral(resourceName: "Taurus")
        } else if signLabel.text == "Aquarius" {
            signImage.image = #imageLiteral(resourceName: "Aquarius")
        } else if signLabel.text == "Virgo" {
            signImage.image = #imageLiteral(resourceName: "Virgo")
        } else if signLabel.text == "Capricorn" {
            signImage.image = #imageLiteral(resourceName: "Capricorn")
        }
    }
}
