//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

struct TicTacToeBrain {
    static var numberOfMoves = 1
    static let playerOne = "X"
    static let playerTwo = "O"
    
    static func playGame() -> String {
        
    if numberOfMoves % 2 == 1 {
        numberOfMoves += 1
        return playerOne
        
    } else {
        numberOfMoves += 1
        return playerTwo
    }
        

        
        
    }
    

}
