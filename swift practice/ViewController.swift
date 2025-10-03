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
}

