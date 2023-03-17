//
//  TicViewModelTests.swift
//  TDDTicTacToeTests
//
//  Created by aB on 3/13/23.
//

import XCTest
@testable import TDDTicTacToe

final class TicViewModelTests: XCTestCase {
    
    func test_initialValue_NineCells() {
        // Arrange
        let ticViewModel = TicViewModel()
        // Act
        
        // Assert
        XCTAssertEqual(ticViewModel.grid.count, 9)
    }
    
    func test_intialValue_IsBlank() {
        // Arrange
        let ticViewModel = TicViewModel()
        // Act
        
        // Assert
        XCTAssertEqual(ticViewModel.grid.filter {$0 == Cell.b}.count, 9)
    }
    
    func test_isInitialTurnPlayerOne() {
        //Act
        let ticVm = TicViewModel()
        //Arrange
        
        //Assert
        XCTAssertTrue(ticVm.isPlayerOneTurn)
    }
    
    func test_isNextPlayersTurn() {
        //Arrange
        let ticVm = TicViewModel()
        //Act
        ticVm.setCell(index: 5, cellValue: .x)
        //Assert
        XCTAssertFalse(ticVm.isPlayerOneTurn)
    }
    
    func test_alternatingTurns() {
        //Arrange
        let ticVm = TicViewModel()
        
        //Act
        for i in 1...9 {
            ticVm.setCell(index: i - 1, cellValue: .o)
            
            XCTAssertEqual(i%2==0, ticVm.isPlayerOneTurn)
        }
    }
}
