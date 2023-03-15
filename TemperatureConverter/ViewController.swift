//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Marlon Garcia-Bermejo on 2023-03-14.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var tempLabel: UILabel!
    
    @IBOutlet weak var celciusPickerView: UIPickerView!
    
    
    var tempValues = (-100...100).reversed().map{$0}
    let converter = CelciusConverter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaultRow = tempValues.count / 2
        celciusPickerView.selectRow(defaultRow, inComponent: 0, animated: false)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tempValues.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(tempValues[row]) °C"
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let tempC = tempValues[row]
        let tempF = converter.degreesFahrenheit(degreesCelcius: tempC)
        
        tempLabel.text = "\(tempF) °F"
    }
    
}

