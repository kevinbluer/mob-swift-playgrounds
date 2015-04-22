// Playground - noun: a place where people can play

// loops within loops
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
    "InterestingNumbs": [99, 23, 101]
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
largest

// TODO - Add another set to interestingNumbers 

var secondForLoop = 0
for var i = 0; i < 3; ++i {
    secondForLoop += 1
    secondForLoop
}

var m = 2
do {
    m = m * 2
} while m < 100
m
