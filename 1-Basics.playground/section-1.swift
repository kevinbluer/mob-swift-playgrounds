// Playground - noun: a place where people can play




//*** Variables & Constants ***//

// variables
var myVariable = 42
myVariable = 50
println(myVariable)

// constants
let myConstant = 42

// TODO - Try changing the value of myConstant
// TODO - Create some additional variables and print them




//*** Basic Types (Implicit & Explicit) ***//

// integer
let implicitInteger = 70

// double
let implicitDouble = 70.0

// explicit typing
let explicitDouble: Double = 70

// TODO - Create a constant with an explicit type of Float and a value of 4.5

let explicitFloat: Float = 4


//*** strings ***//

var label = "The width is "
let width: Int = 94
var widthLabel = label + String(width)

//
// TODO - try removing the string conversion

let apples = 3
let oranges = 5
let grapes = 5
let plums = 5
let kiwi = 5
let appleSummary = "I have \(apples) apples."
var fruitSummary = "I have \(apples + oranges) pieces of fruit."

fruitSummary  = "I have \(apples + oranges + grapes + plums + kiwi) pieces of fruit."

// TODO - Create a Fruit Salad (by adding 3 more pieces of fruit)




//*** arrays ***//

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "beer"
shoppingList.append("red grapes")
shoppingList += ["chips"]

shoppingList[3] = "red paint"

println(shoppingList.count)

// TODO - Change the blue paint to red
// TODO - Add 3 more items
// TODO - Write out the length ("count")




//*** dictionaries ***//

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"
occupations["Kevin"] = "Teacher"

occupations["Malcolm"] = "Uber Captain"
// TODO - Add yourself
// TODO - Give Malcolm a promotion

occupations

