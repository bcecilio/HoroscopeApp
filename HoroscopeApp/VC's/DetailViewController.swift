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
    @IBOutlet weak var horoscopeDescription: UILabel!
    @IBOutlet weak var signLabel: UILabel!
    
    var name: Name?
    var sign: Name?

    override func viewDidLoad() {
        super.viewDidLoad()
        signLabel.text = name?.name
    }
}
