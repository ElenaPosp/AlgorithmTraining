//
//  Saper.swift
//  AlgorithmTraining
//
//  Created by e.pospelova on 03.04.2025.
//

import Foundation
//[
//    [0,0,0,-1],
//    [0,0,0,0],
//    [-1,0,0,0],
//]
// [0,3]
// [2,0]
//

class SaperSolution {
    func minesweeper(bombs: [[Int]], columns: Int, rows: Int) -> [[Int]] {
        var result: [[Int]] = []
        
        for _ in 0...rows-1 {
            let row = Array<Int>(repeating: 0, count: columns)
            result.append(row)
        }
        
        print(result)
        bombs.forEach { bomb in
            let row = bomb[0]
            let column = bomb[1]
            let placesToIncrease = [
                [row-1, column-1],
                [row-1, column],
                [row-1, column+1],
                
                [row, column-1],
                [row, column+1],
                
                [row+1, column-1],
                [row+1, column],
                [row+1, column+1]
            ]
            
            placesToIncrease.forEach { place in
                let placeRow = place[0]
                let placeColumn = place[1]
                
                if (0<=placeRow) && (placeRow<rows) && (0<=placeColumn) && (placeColumn<columns), result[placeRow][placeColumn] != -1 {
                    let value = result[placeRow][placeColumn]
                    result[placeRow][placeColumn] = value + 1
                }
            }
            
            result[row][column] = -1
            
            
        }
        
        print(result)
        return result
    }
}
