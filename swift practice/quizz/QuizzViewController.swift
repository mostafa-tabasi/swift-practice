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
    
    let quizQuestions = [
        ["Four + Two is equal to six", "True"],
        ["Five - Three is greater than One", "True"],
        ["Three + Eight is less than Ten", "False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func onAnswerPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quizQuestions[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right")
        } else {
            print("Wrong")
        }
        
        if questionNumber < quizQuestions.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        updateUI()
    }
    
    func updateUI(){
        questionLabel.text = quizQuestions[questionNumber][0]
    }
}
