//
//  QuizzViewController.swift
//  swift practice
//
//  Created by mohsen tabasi on 10/11/25.
//  Copyright © 2025 mstf. All rights reserved.
//

import Foundation
import UIKit

class QuizzViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var truebutton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onAnswerPressed(_ sender: UIButton) {
    }
}
