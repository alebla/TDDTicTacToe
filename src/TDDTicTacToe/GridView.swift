//
//  GridView.swift
//  TDDTicTacToe
//
//  Created by aB on 3/16/23.
//

import SwiftUI

struct GridView: View {
    @ObservedObject var ticVm: TicViewModel
    
    var body: some View {
        ZStack {
            VStack(spacing: 3) {
                let n = 3
                ForEach(0..<n, id: \.self) { row in
                    HStack(spacing: 3) {
                        ForEach(0..<n, id: \.self) { col in
                            let index = (row*n) + col
                            
                            Button {
                                //Set cell to X or O
                                ticVm.setCell(index: index, cellValue: ticVm.isPlayerOneTurn ? .x: .o)
                            } label: {
                                ZStack {
                                    VStack {
                                        Text("\(ticVm.grid[index].rawValue)")
                                            .font(.largeTitle)
                                            .fontWeight(.bold)
                                    }
                                }
                                .frame(width: 80, height: 80)
                            }
                        }
                    }
                }
            }
            GridLinesView()
                .foregroundColor(.purple)
                .frame(width: 240, height: 240)
        }
    }
}
