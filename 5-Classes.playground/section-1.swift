// Playground - noun: a place where people can play


import Foundation

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var myShape:Shape = Shape()
myShape.numberOfSides = 4
myShape.simpleDescription()

// TODO - Add an additional property and function




class Album {
    var title: String?
    var price: String?
    var thumbnailImageURL: String?
    var largeImageURL: String?
    var itemURL: String?
    var artistURL: String?
    
    init(name: String!, price: String!, artistURL: String!) {
        self.title = name
        self.price = price
        self.artistURL = artistURL
    }
}

var album:Album = Album(name: "Oasis", price: "1.99", artistURL: "www.artist.com")

album.title = "Oasis"




class Pizza {
    var pizzaPricePerInSq = ["Cheese": 0.03 , "Sausage": 0.06 , "Pepperoni": 0.05 , "Veggie": 0.04]
    let pi = 3.1415926
    
    var pizzaDiameter = 0.0
    let maxPizza = 24.0
    var pizzaType = "Cheese"
    
    
    
    var radius : Double {  //computed property
        get{   //must define a getter
            return pizzaDiameter/2.0
        }
        set(newRadius){ //optionally define a setter
            pizzaDiameter = newRadius * 2.0
        }
    }
    
    var area :  Double {
        get{
            return pizzaArea()
        }
    }
    
    
    func pizzaArea() -> Double{
        return radius * radius * pi
    }
    
    func unitPrice() ->Double{
        let unitPrice = pizzaPricePerInSq[pizzaType]    //optional type ?Double
        if unitPrice != nil {
            return unitPrice!
        }                               //optional type ?Double checking for nil
        else {
            return 0.0
        }
    }
    
    func pizzaPrice() ->Double{
        let unitPrice = pizzaPricePerInSq[pizzaType]    //optional type ?Double
        if unitPrice != nil {                                   //optional type ?Double checking for nil
            return pizzaArea() * unitPrice!             //unwrapping the optional type
        }
        return 0.0
    }
    
    
    func diameterFromString(aString:NSString) -> Double {
        switch aString {
        case "Personal":
            return 8.0
        case "10\"":
            return 10.0
        case "12\"":
            return 12.0
        case "16\"","15\"":
            return 16.0
        case "18\"":
            return 18.0
        case "24\"":
            return 24.0
        default:
            return 0.0
        }
    }
    
    
}

var pizza:Pizza = Pizza()

pizza.pizzaType
pizza.unitPrice()




// 1
class TipCalculator {
    
    // 2
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    // 3
    init(total:Double, taxPct:Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    // 4
    func calcTipWithTipPct(tipPct:Double) -> Double {
        return subtotal * tipPct
    }
    
    // 1
    func returnPossibleTips() -> [Int: Double] {
        
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        
        // 2
        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            // 3
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
        
    }
    
    
}

// 6
let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.returnPossibleTips()



