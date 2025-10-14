//
//  ViewController.swift
//  swift practice
//
//  Created by mohsen tabasi on 10/3/25.
//  Copyright © 2025 mstf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToDicee(_ sender: UIButton){
        let storyboard = UIStoryboard(name: "Dicee", bundle: nil)
        let diceeVC = storyboard.instantiateViewController(withIdentifier: "DiceeViewController") as! DiceeViewController
        
        present(diceeVC, animated: true, completion: nil)
    }
    
    @IBAction func goToQuizz(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Quizz", bundle: nil)
        let quizzVC = storyboard.instantiateViewController(withIdentifier: "QuizzViewController") as! QuizzViewController
        
        present(quizzVC, animated: true, completion: nil)
    }
    
    @IBAction func goToBMI(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "BMICalculator", bundle: nil)
        let bmiVC = storyboard.instantiateViewController(withIdentifier: "BMICalculatorViewController") as! BMICalculatorViewController
        
        present(bmiVC, animated: true, completion: nil)
    }
    
    @IBAction func goToWeather(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Weather", bundle: nil)
        let weatherVC = storyboard.instantiateViewController(withIdentifier: "WeatherViewController") as! WeatherViewController
        
        present(weatherVC, animated: true, completion: nil)
    }
}

