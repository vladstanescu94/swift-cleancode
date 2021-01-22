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

// MARK: - Use Searchable Names

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

// MARK: - Avoid Encodings
public struct Part {
    private var description: String
    
    mutating func setDescription(_ description: String) {
        self.description = description
    }
}

// MARK: - Add Meaningful Context
private func printGuessStatistics(candidate: Character, count: Int) {
    let number: String
    let verb: String
    let plurarModifier: String
    
    if count == 0 {
        number = "no"
        verb = "are"
        plurarModifier = "s"
    } else if count == 1 {
        number = "1"
        verb = "is"
        plurarModifier = ""
    } else {
        number = String(count)
        verb = "are"
        plurarModifier = "s"
    }
    
    let guessMessage = "There \(verb) \(number) \(candidate) \(plurarModifier)"
    
    print(guessMessage)
}

struct GuessSatisticsMessage {
    var number: String
    var verb: String
    var pluralModifier: String
    
    public mutating func make(candidate: Character, count: Int) -> String {
        createPluralDependentMessageParts(count: count)
        return "There \(verb) \(number) \(candidate) \(pluralModifier)"
    }
    
    public mutating func createPluralDependentMessageParts(count: Int) {
        if count == 0 {
            thereAreNoLetters()
        } else if count == 1 {
            thereIsOneLetter()
        } else {
            thereAreManyLetters(count: count)
        }
    }
    
    private mutating func thereAreNoLetters() {
        number = "no"
        verb = "are"
        pluralModifier = "s"
    }
    
    private mutating func thereIsOneLetter() {
        number = "1"
        verb = "is"
        pluralModifier = ""
    }
    
    private mutating func thereAreManyLetters(count: Int) {
        number = String(count)
        verb = "are"
        pluralModifier = "s"
    }
}
