//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var buttons: [UIButton]!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let playGame = TicTacToeBrain.playGame()
        
        for button in buttons {
            if button.tag == sender.tag {
                print("this is the btn \(button.tag)")
                
                button.setTitle(playGame, for: .normal)
                print("this button has the value of  \(button.currentTitle!)")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

