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

var gameBoard = [[Int]]()
let STATUS_VALUE = 0
let FLAGGED = 4

public func getFlaggedCells() -> [[Int]] {
    var flaggedCells = [[Int]]()
    for cell in gameBoard {
        if cell[STATUS_VALUE] == FLAGGED {
            flaggedCells.append(cell)
        }
    }
    return flaggedCells
}

