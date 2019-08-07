//
//  Players.swift
//  TicTacToe
//
//  Created by Alexander George Legaspi on 8/6/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

enum Players {
    case playerOne
    case playerTwo
    
    var symbol: Symbol {
        return Symbol(player: self)
    }
    
    mutating func toggle() {
        switch self {
        case .playerOne:
            self = .playerTwo
        case .playerTwo:
            self = .playerOne
        }
    }
}
