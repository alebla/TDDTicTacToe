//
//  TicTacToeView.swift
//  TDDTicTacToe
//
//  Created by aB on 3/15/23.
//

import SwiftUI

struct TicTacToeView: View {
    @ObservedObject private var ticVM: TicViewModel
    
    init() {
        ticVM = TicViewModel()
    }
    
    var body: some View {
        VStack {
            Text("Tic Tac Toe Game")
            
            GridView(ticVm: ticVM)
        }
    }
}

struct TicTacToeView_Previews: PreviewProvider {
    static var previews: some View {
        TicTacToeView()
    }
}
