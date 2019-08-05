//
//  ViewController.swift
//  Dicy
//
//  Created by Jörg Klausewitz on 04.08.19.
//  Copyright © 2019 Jörg Klausewitz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let dices = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        
        if motion == .motionShake{
            
            let dice1 = Int.random(in: 0...5)
            let dice2 = Int.random(in: 0...5)
            
            diceImageView1.image = UIImage(named: dices[dice1])
            diceImageView2.image = UIImage(named: dices[dice2])
            
        }
    }

}

