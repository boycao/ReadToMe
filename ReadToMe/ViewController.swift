//
//  ViewController.swift
//  ReadToMe
//
//  Created by Boya Cao on 11/26/19.
//  Copyright © 2019 Boya Cao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let startButton = UIButton()
    let welcomeLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        welcomeLabel.frame = CGRect(x: 50, y: 50, width: 500, height: 30)
        welcomeLabel.text = "Welcome to ReadToMe"
        
        startButton.frame = CGRect(x: 100, y: 100, width: 200, height: 30)
        startButton.setTitle("Let's start reading", for: .normal)
        startButton.setTitleColor(UIColor.blue, for: .normal)
        startButton.addTarget(self, action: #selector(startReading(_:)), for: .touchUpInside)
        self.view.addSubview(welcomeLabel)
        self.view.addSubview(startButton)
    }
    
    @IBAction func startReading(_ sender:UIButton){
        print("button tapped")
    }
}

