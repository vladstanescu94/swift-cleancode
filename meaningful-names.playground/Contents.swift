// MARK: - Use Intention-Revealing Names

var d: Int // elapsed time in days

var elapsedTimeInDays: Int
var daysSinceCreation: Int
var daysSinceModification: Int
var fileAgeInDays: Int

var theList = [[Int]]()

public func getThem() -> [[Int]] {
    var list1 = [[Int]]()
    for x in theList {
        if x[0] == 4 {
            list1.append(x)
        }
    }
    return list1
}

struct Cell {
    static let FLAGGED = 4
    var statusValue: Int
    
    func isFlagged() -> Bool {
        return statusValue == Cell.FLAGGED
    }
}

var gameBoard = [Cell]()
let STATUS_VALUE = 0
let FLAGGED = 4

func getFlaggedCells() -> [Cell] {
    var flaggedCells = [Cell]()
    for cell in gameBoard {
        if cell.isFlagged() {
            flaggedCells.append(cell)
        }
    }
    return flaggedCells
}

