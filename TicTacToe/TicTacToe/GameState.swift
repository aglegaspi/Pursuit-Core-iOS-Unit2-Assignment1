//
//  GameState.swift
//  TicTacToe
//
//  Created by Alexander George Legaspi on 8/6/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

enum GameState {
    // you pass in player
    case won(Players)
    case lost(Players)
    
    case tie
}
