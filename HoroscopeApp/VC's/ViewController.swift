//
//  ViewController.swift
//  HoroscopeApp
//
//  Created by Brendon Cecilio on 1/13/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var signPicker: UIPickerView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var horoscopeButton: UIButton!
    
    var signs: [String] = ["Aries", "Taurus", "Scorpio", "Gemini", "Libra", "Leo", "Cancer", "Sagittarius", "Aquarius", "Capricorn", "Virgo", "Pisces"]
    
    var name : Name!
    var sign : Name!

    override func viewDidLoad() {
        super.viewDidLoad()
        signPicker.delegate = self
        signPicker.dataSource = self
        nameTextField.delegate = self
    }
    
    preparefor
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return signs.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return signs[row]
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        name.name = nameTextField.text ?? ""
        return true
    }
}

