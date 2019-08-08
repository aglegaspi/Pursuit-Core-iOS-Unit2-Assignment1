//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model = TicTacToeBrain()
    var player = Player.player1
    
    @IBOutlet var allButtons: [GameButton]!
    @IBOutlet weak var playerStatus: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    @IBAction func buttonPressed(_ sender: GameButton) {
        model.updateGameBoard(player: player, row: sender.row, col: sender.col)
        let result = model.checkGameState()
        
        switch result {
            
        case .player1wins:
            updateButtons(row: sender.row, col: sender.col, player: player)
            playerStatus.text = "player 1 wins"
            disableButtons()
            playAgainButton.isHidden = false
            
        case .player2wins:
            updateButtons(row: sender.row, col: sender.col, player: player)
            playerStatus.text = "player 2 wins"
            disableButtons()
            playAgainButton.isHidden = false
            
        case .ongoing:
            updateButtons(row: sender.row, col: sender.col, player: player)
            player.alternate()
            playerStatus.text = "\(player.rawValue) make your move!"
            
        case .tie:
            updateButtons(row: sender.row, col: sender.col, player: player)
            playerStatus.text = "omg..a tie!"
            playAgainButton.isHidden = false
        }
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        resetGame()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playAgainButton.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func disableButtons() {
        for button in allButtons {
            button.isEnabled = false
        }
    }
    
    func resetGame() {
        
        for button in allButtons {
            
            button.setTitle("", for: .normal)
            button.isEnabled = true
            
        
        }
        model.gameBoard = [["-", "-", "-"], //row 0
            ["-", "-", "-"], //row 1
            ["-", "-", "-"]] //row 2
        
        player = Player.player1
        playerStatus.text = "\(player.rawValue) make your move!"
        playAgainButton.isHidden = true
        
        
    }
    
    func updateButtons(row: Int,col: Int, player: Player) {
        
        for button in allButtons {
            
            if button.row == row && button.col == col {
                
                switch player {
                case .player1:
                    button.setTitle("O", for: .normal)
                    button.isEnabled = false
                case .player2:
                    button.setTitle("X", for: .normal)
                    button.isEnabled = false
                }
                
            }
            
        }
        
    }
    
    
}

