//
//  CalculatorLogic.swift
//  swift practice
//
//  Created by mohsen tabasi on 10/13/25.
//  Copyright © 2025 mstf. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    private var bmiValue : Float?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmiValue = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmiValue ?? 0.0)
    }
}
