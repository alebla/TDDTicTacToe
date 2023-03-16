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

enum Winner {
    case o, x, none
}

struct TicModel {
    private var _grid: [Cell]
    private var _winner: Winner
    
    init() {
        _grid = []
        for _ in 0..<9 {
            _grid.append(Cell.b)
        }
        _winner = .none
    }
    
    var grid: [Cell] {
        get { _grid }
    }
    
    var winner: Winner {
        get { _winner }
    }
    
    var isGridFull: Bool {
        grid.filter { $0 == .b }.count == 0
    }
    
    mutating func setCell(n: Int, c: Cell) {
        guard _grid.indices.contains(n) else { return }
        
        guard _grid[n] == .b else { return }
        
        _grid[n] = c
    }
    
    mutating func updateGameStatus() -> Bool {
        let winOptions: [Set<Int>] = [
            [0,1,2], [3,4,5], [6,7,8],
            [0,3,6], [1,4,7], [2,5,8],
            [0,4,8], [2,4,6]
        ]
        
        let oCells: Set<Int> = Set(_grid.indices.map { _grid[$0] == .o ? $0: -1 })
        let xCells: Set<Int> = Set(_grid.indices.map { _grid[$0] == .x ? $0: -1 })
        
        for i in winOptions {
            if i.intersection(oCells) == i {
                //O wins
                _winner = .o
                return true
            }
            
            if i.intersection(xCells) == i {
                //X wins
                _winner = .x
                return true
            }
        }
        return false
    }
}
