//
//  ViewController.swift
//  ReadToMe
//
//  Created by Boya Cao on 11/26/19.
//  Copyright © 2019 Boya Cao. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        welcomeLabel.text = "Welcome to ReadToMe!"
        nameTextField.delegate = self;
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            // Hide the keyboard.
            textField.resignFirstResponder()
            return true
        }
        
        func textFieldDidEndEditing(_ textField: UITextField) {
            welcomeLabel.text = textField.text
        }
    }
    
    @IBAction func startReading(_ sender:UIButton){
        print("button tapped")
    }
}

