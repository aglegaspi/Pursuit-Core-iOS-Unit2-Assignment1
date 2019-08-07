//
//  Symbol.swift
//  TicTacToe
//
//  Created by Alexander George Legaspi on 8/6/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

enum Symbol: String {
    case playerOne = "X"
    case playerTwo = "O"
    
    init(player: Players) {
        switch player {
        case .playerOne: self = .playerOne
        case .playerTwo: self = .playerTwo
        }
    }
}
