//
//  funcs.swift
//  swiftIntro
//
//  Created by Tallon Covell on 8/4/22.
//

import Foundation
import UIKit
import SwiftUI




enum OrderError: Error {
    case invalidSelection
    case itemUnavailable
    case unexpected
}

extension OrderError {
    var isFatal: Bool {
        if self == OrderError.unexpected {
            return true
        }
        return false
    }
}

extension OrderError {
    public var message: String {
        switch self {
            case .invalidSelection:
                return "Please make a selection."
            case .itemUnavailable:
                return "This item is currently unavailable."
            case .unexpected:
                return "Unexpected error. Try refresh."
        }
    }
}





func menuInfo() {
    bread()
    dinner()
    sushiRoll()
    print()
}


/*
Create the following function 'types' in a new File named: Funcs
- 1.func donut(varName: <Type>) {}
- 2.func(value1: <T>, value2: <T>) {}
- 3.func(value1: <T>, value2: <T>) -> Set<String> {}
- 4.func -> Tuple {}  //Maybe?
- 5.func(value1: <T>, value2: <T>) ->  {}

- How to create Error or Error type
- How to create function w/ completion block.
- func asyncFunc(varName: [String], completion: ((Bool, Error) -> Void)) {}
- recursive function.
*/

//1.
func bread() {
    _ = FoodItem(name: ["Bread"], price: ["Wheat" : 5.99, "Sourdough" : 5.99, "Pretzel" : 5.99], description: "Made Fresh Daily!")
}

//2.
func dinner() {
    _ = FoodItem(name: ["Meat"], price: ["Steak" : 20, "Chicken" : 12, "Salmon" : 15, "Crab" : 18], description: "All Meat is Made to Order.")
}

//3.
func sushiRoll() {
    _ = FoodItem(name: ["Sushi Rolls"], price: ["Salmon Roll" : 12, "Crab Roll" : 14], description: "All Seafood is Fresh Caught.")
}

//4.
func orderComplete(finished: () -> Void) {
    print("Thank You for Your Order!")
}

