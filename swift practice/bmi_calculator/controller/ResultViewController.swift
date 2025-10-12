//
//  ResultViewController.swift
//  swift practice
//
//  Created by mohsen tabasi on 10/12/25.
//  Copyright © 2025 mstf. All rights reserved.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue : String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
    }
    
    @IBAction func onRecalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
