//
//  TicModel.swift
//  TDDTicTacToe
//
//  Created by aB on 3/13/23.
//

import Foundation

enum Cell: String {
    case x = "X"
    case o = "O"
    case b = ""
}

struct TicModel {
    private var _grid: [Cell]
    
    var grid: [Cell] {
        _grid
    }
    
    init() {
        _grid = []
        for _ in 0..<9 {
            _grid.append(Cell.b)
        }
    }
}
