//
//  BMICalculatorViewController.swift
//  swift practice
//
//  Created by mohsen tabasi on 10/12/25.
//  Copyright © 2025 mstf. All rights reserved.
//

import Foundation
import UIKit

class BMICalculatorViewController: UIViewController {
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    @IBAction func onHeightSliderChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func onWeightSliderChanged(_ sender: UISlider) {
        print(sender.value)
    }
}
