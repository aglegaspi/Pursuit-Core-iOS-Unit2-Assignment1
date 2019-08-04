//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    @IBOutlet weak var buttonSeven: UIButton!
    @IBOutlet weak var buttonEight: UIButton!
    @IBOutlet weak var buttonNine: UIButton!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        switch sender.tag {
            
        case 1:
            self.buttonOne.setTitle("X", for: .normal)
        case 2:
            self.buttonTwo.setTitle("O", for: .normal)
        case 3:
            self.buttonThree.setTitle("X", for: .normal)
        case 4:
            self.buttonFour.setTitle("O", for: .normal)
        case 5:
            self.buttonFive.setTitle("X", for: .normal)
        case 6:
            self.buttonSix.setTitle("O", for: .normal)
        case 7:
            self.buttonSeven.setTitle("X", for: .normal)
        case 8:
            self.buttonEight.setTitle("O", for: .normal)
        case 9:
            self.buttonNine.setTitle("X", for: .normal)
        default:
            self.buttonOne.setTitle("", for: .normal)
        }
        
    }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }
        
        
}

