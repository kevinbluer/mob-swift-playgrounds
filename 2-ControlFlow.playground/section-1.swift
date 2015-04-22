// Playground - noun: a place where people can play


var myFirstArray: [String] = []
myFirstArray = ["red", "green", "blue", "orange"]

for var x = 0; x < myFirstArray.count; x++ {
    println(myFirstArray[x])
}



let individualScores = [75, 43, 103, 87, 12, 24, 23]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
println(teamScore)

// TODO - add some more scores


let vegetable = "red pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("per"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
}


// TODO - try hasSuffix vs hasPrefix
// TODO - try removing the default case

