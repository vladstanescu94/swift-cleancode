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

// MARK: - Avoid Disinformation

// Bad names
let hp: String
let aix: String
let sco: String

let accountList: [Int: String] // it's not an actual list

// Beware of small differences
let XYZControllerForEfficientHandlingOfStrings: Any
let XYZControllerForEfficientStorageOfStrings: Any

// Dont use lower-case L or uppercase o

/* var a: Int = l;
if O == l {
    a = O1;
} else {
    l = 01;
} */

