//
//  CelciusConverter.swift
//  TemperatureConverter
//
//  Created by Marlon Garcia-Bermejo on 2023-03-14.
//

import Foundation

class CelciusConverter {
    
    func degreesFahrenheit(degreesCelcius: Int) -> Int {
        
        let tempF = 1.8 * Double(degreesCelcius) + 32
        
        return Int(round(tempF))
    }
}
