//
//  WelcomeViewController.swift
//  swift practice
//
//  Created by mohsen tabasi on 10/18/25.
//  Copyright © 2025 mstf. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = ""
        var charIndex = 0.0
        let titleText = "⚡️FlashChat"
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false, block: {(timer) in
                self.titleLabel.text?.append(letter)
            })
            charIndex += 1
        }
    }

}
