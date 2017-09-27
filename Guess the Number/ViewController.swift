//
//  ViewController.swift
//  Guess the Number
//
//  Created by Yizra Ghebre on 7/21/17.
//  Copyright © 2017 Yizra Ghebre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessNumber: UILabel!
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var randomNumber = Int(arc4random_uniform(11))
    
    @IBAction func submitted (sender: UIButton) {
        let input = Int(textInput.text!)
        if input! == randomNumber {
            result.text = "Correct Pickle!"
            randomNumber = Int(arc4random_uniform(11))
        }
        else if ((input! - randomNumber) < -4) || ((input! - randomNumber) > 4) {
            result.text = "Brrr!"
        }
        else if ((input! - randomNumber) < -3) || ((input! - randomNumber) > 3){
            result.text = "Cold"
        }
        else if ((input! - randomNumber) < -2) || ((input! - randomNumber) > 2) {
            result.text = "Warm"
        }
        else if ((input! - randomNumber) < -1) || ((input! - randomNumber) > 1) {
            result.text = "Warmer!"
        }
        else if ((input! - randomNumber) < 0) || ((input! - randomNumber) > 0) {
            result.text = "Hothead!!!"
        }
        
    }

}

