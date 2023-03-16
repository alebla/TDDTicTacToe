//
//  TicViewModel.swift
//  TDDTicTacToe
//
//  Created by aB on 3/13/23.
//

import Foundation

final class TicViewModel: ObservableObject {
    @Published private var ticModel: TicModel
    
    init() {
        ticModel = TicModel()
    }
    
    var grid: [Cell] {
        get { ticModel.grid }
    }
    
    var winner: Winner {
        get { ticModel.winner }
    }
    
    var isGameOver: Bool {
        get { ticModel.isGridFull || ( ticModel.winner != .none ) }
    }
    
    func setCell(index: Int, cellValue: Cell) {
        ticModel.setCell(n: index, c: cellValue)
        
        _ = ticModel.updateGameStatus()
    }
}
