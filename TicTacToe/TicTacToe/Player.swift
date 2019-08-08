//
//  Players.swift
//  TicTacToe
//
//  Created by Alexander George Legaspi on 8/6/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

enum Player {
    case player1
    case player2
    
    mutating func alternate() {
        switch self {
            
        case .player1:
            self = .player2
            
        case .player2:
            self = .player1
        }
    }
}
