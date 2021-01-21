import Foundation
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

// Use Pronunceable Names

struct DtaRcrd102 {
    private var genymdhms: Date
    private var modymdhms: Date
    private let pszqint: String = "102"
}

struct Customer {
    private var generationTimestamp: Date
    private var modificaitonTimestamp: Date
    private let recordId: String = "102"
}

// Use Searchable Names

var s = 0
var t = [Int]()

for j in 0..<34 {
    s += (t[j] * 4) / 5
}

var realDaysPerIdealDay = 4
let WORK_DAYS_PER_WEEK = 5
let NUMBER_OF_TASKS = 5
var taskEstimate = [Int]()
var sum = 0

for j in 0..<NUMBER_OF_TASKS {
    let realTaskDays = taskEstimate[j] * realDaysPerIdealDay
    let realTaskWeeks = realTaskDays / WORK_DAYS_PER_WEEK
    sum += realTaskWeeks
}
