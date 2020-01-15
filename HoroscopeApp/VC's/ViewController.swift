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
    @IBOutlet weak var nameTextField: UITextField!
    
    var signs: [String] = ["Aries", "Taurus", "Scorpio", "Gemini", "Libra", "Leo", "Cancer", "Sagittarius", "Aquarius", "Capricorn", "Virgo", "Pisces"]
    
    var signTwo = [Horoscope]() {
        didSet {
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        loadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController, let indexPath = collectionView.indexPathsForSelectedItems!.first else {
            return
        }
        detailVC.signDetail = signTwo[indexPath.row]
    }
    
    func loadData() {
        HoroscopeAPI.getHoroscope { (result) in
            switch result {
            case .failure(_):
                print("no data")
            case .success(let sunSigns):
                self.signTwo = [sunSigns]
            }
        }
    }

}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return signTwo.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "signCell", for: indexPath) as? SignCell else {
            fatalError("could not dequeue")
        }
        let signCell = signTwo[indexPath.row]
        cell.configureCell(sunSign: signCell)
        return cell
    }


}

