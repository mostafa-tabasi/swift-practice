//
//  DiceeViewController.swift
//  swift practice
//
//  Created by mohsen tabasi on 10/3/25.
//  Copyright © 2025 mstf. All rights reserved.
//

import UIKit

class DiceeViewController: UIViewController {

    @IBOutlet weak var diceImg1: UIImageView!
    @IBOutlet weak var diceImg2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onRollPressed(_ sender: UIButton) {
        let diceValues = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        diceImg1.image = diceValues.randomElement()
        diceImg2.image = diceValues.randomElement()
    }
    
}
