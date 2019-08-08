//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

struct TicTacToeBrain {
  
    var gameBoard = [["-"],["-"],["-"],
                        ["-"],["-"],["-"],
                        ["-"],["-"],["-"]]
    
    func updateGameBoard(player: Player, row: Int, col: Int) {
    switch player {
    case .player1:
        gameBoard[row][col] = "O"
    case .player2L:
        gameBoard[row][col] = "X"
        }
    }

}
