//
//  ViewController.swift
//  HoroscopeApp
//
//  Created by Brendon Cecilio on 1/13/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var signs: [String] = ["Aries", "Taurus", "Scorpio", "Gemini", "Libra", "Leo", "Cancer", "Sagittarius", "Aquarius", "Capricorn", "Virgo", "Pisces"]
    
    var signTwo = [Horoscope]() {
        didSet {
            
        }
    }
    
    var name : Name!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController else {
            return
        }
        detailVC.name = name
    }

}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}

