import Foundation

/**
 VALID SUDOKU
 Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:
 
 Each row must contain the digits 1-9 without repetition.
 Each column must contain the digits 1-9 without repetition.
 Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
 Note:
 
 A Sudoku board (partially filled) could be valid but is not necessarily solvable.
 Only the filled cells need to be validated according to the mentioned rules.
 */

func isValidSudoku(_ board: [[Character]]) -> Bool {
    guard board.count == 9 && board[0].count == 9 else { return false }
    
    return validateColumn(board) && validateRow(board) && validateGrid(board)
}

func validateColumn(_ board: [[Character]]) -> Bool {
    
    for col in 0..<board.count {
        var column = [Character]()
        for row in 0..<board.count {
            if board[row][col] != "." {
                column.append(board[row][col])
            }
        }
        if containsDuplicate(column) { return false }
    }
    
    return true
}

func validateRow(_ board: [[Character]]) -> Bool {
    
    for col in 0..<board.count {
        var r = [Character]()
        for row in 0..<board.count {
            if board[col][row] != "." {
                r.append(board[col][row])
            }
        }
        if containsDuplicate(r) { return false }
    }
    
    return true
}

func validateGrid(_ board: [[Character]]) -> Bool {
    
    for k in 0..<9 {
        var grid = [Character]()
        for i in k / 3 * 3..<k / 3 * 3 + 3 {
            for j in k % 3 * 3 ..< k % 3 * 3 + 3 {
                if board[i][j] != "." {
                    grid.append(board[i][j])
                }
            }
            if containsDuplicate(grid) { return false }
        }
    }
    return true
}



func containsDuplicate(_ char: [Character]) -> Bool {
    return Set(char).count != char.count
}
