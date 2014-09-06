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

// TODO - Create an instance of a new album


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








