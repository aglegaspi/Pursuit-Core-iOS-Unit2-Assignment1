//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var playGame = TicTacToeBrain.playerOne
    
    
    @IBOutlet var buttons: [UIButton]!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        for button in buttons {
            if button.tag == sender.tag {
                print("this is the btn \(button.tag)")
                print("this is the sndr \(sender.tag)")
            button.setTitle(playGame, for: .normal)
                
            }
        }
    }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }
        
        
}

