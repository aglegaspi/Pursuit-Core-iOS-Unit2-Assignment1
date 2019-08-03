//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0
    
    @IBOutlet weak var buttonOne: UIButton!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        buttonOne.setTitle("x",for: .normal)
        print("pressed \(sender.tag)")
        counter += 1
    }
    
   
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }


}

