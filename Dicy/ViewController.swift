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
            
            switch dice1 {
            case 0:
                diceImageView1.image = UIImage(named: "dice1")
            case 1:
                diceImageView1.image = UIImage(named: "dice2")
            case 2:
                diceImageView1.image = UIImage(named: "dice3")
            case 3:
                diceImageView1.image = UIImage(named: "dice4")
            case 4:
                diceImageView1.image = UIImage(named: "dice5")
            case 5:
                diceImageView1.image = UIImage(named: "dice6")
            default:
                break
            }
            
            switch dice2 {
            case 0:
                diceImageView2.image = UIImage(named: "dice1")
            case 1:
                diceImageView2.image = UIImage(named: "dice2")
            case 2:
                diceImageView2.image = UIImage(named: "dice3")
            case 3:
                diceImageView2.image = UIImage(named: "dice4")
            case 4:
                diceImageView2.image = UIImage(named: "dice5")
            case 5:
                diceImageView2.image = UIImage(named: "dice6")
            default:
                break
            }
            
            
            //print("Shaked!")
            
            
        }
    }

}

