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
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var truebutton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizLogic = QuizLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func onAnswerPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizLogic.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizLogic.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        questionLabel.text = quizLogic.getCurrentQuestion()
        progressBar.progress = quizLogic.getQuestionProgres()
        scoreLabel.text = "Score: \(quizLogic.getScore())"
        
        truebutton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
}
