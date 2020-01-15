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
        signImage.image = UIImage(systemName: "exclamationmark-triangle")
    }
}
