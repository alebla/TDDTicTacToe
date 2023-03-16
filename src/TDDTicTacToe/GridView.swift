//
//  GridView.swift
//  TDDTicTacToe
//
//  Created by aB on 3/16/23.
//

import SwiftUI

struct GridView: View {
    @ObservedObject private var ticVm: TicViewModel
    
    init(ticVm: TicViewModel) {
        self.ticVm = ticVm
    }
    
    var body: some View {
        VStack(spacing: 3) {
            let n = 3
            ForEach(0..<n, id: \.self) { row in
                HStack(spacing: 3) {
                    ForEach(0..<n, id: \.self) { col in
                        let index = (row*n) + col
                        
                        Button {
                            //Set cell to X or O
                            ticVm.setCell(index: index, cellValue: .x)
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.green, lineWidth: 5)
                                VStack {
                                    Text("\(ticVm.grid[index].rawValue)")
                                }
                            }
                            .frame(width: 80, height: 80)
                        }
                    }
                }
            }
        }
    }
}
