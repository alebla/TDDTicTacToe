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
}
