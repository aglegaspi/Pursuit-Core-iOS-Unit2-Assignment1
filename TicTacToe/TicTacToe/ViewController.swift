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
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            self.buttonOne.setTitle("X", for: .normal)
        } else if sender.tag == 2 {
            self.buttonTwo.setTitle("O", for: .normal)
        } else if sender.tag == 3 {
            self.buttonThree.setTitle("X", for: .normal)
        }
    }
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }


}

