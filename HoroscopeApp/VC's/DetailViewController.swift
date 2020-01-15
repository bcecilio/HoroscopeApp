//
//  DetailViewController.swift
//  HoroscopeApp
//
//  Created by Brendon Cecilio on 1/13/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var moodDescription: UILabel!
    @IBOutlet weak var horoscopeDescription: UITextView!
    @IBOutlet weak var signLabel: UILabel!
    
    var signDetail: Horoscope!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        guard let sunSign = signDetail else {
            print("no info found")
            return
        }
        horoscopeDescription.text = sunSign.horoscope
        moodDescription.text = sunSign.meta.mood
        signLabel.text = sunSign.sunsign
    }
}
