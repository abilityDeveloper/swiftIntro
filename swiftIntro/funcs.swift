//
//  funcs.swift
//  swiftIntro
//
//  Created by Tallon Covell on 8/4/22.
//

import Foundation
import UIKit
import SwiftUI

struct ContentView: View {
    
    private let menuList: [MenuItem] = [
    MenuItem(photo: "🥞", name: "Breakfast",
              description: "Served from 6 - 11 daily."),
    MenuItem(photo: "🍔", name: "Lunch",
              description: "Served from 11 - 4  daily"),
    MenuItem(photo: "🍝", name: "Dinner",
              description: "Served from 4 - 11 daily."),
    ]
    
    var body: some View {
        NavigationView {
            List(menuList) { menuItem in
                NavigationLink(destination: DetailsView(menuItem: menuItem)) {
                    HStack {
                        MenuItemCircleView(menuItem: menuItem)
                    Text(menuItem.name)
                        .font(.headline)
                    }
                }
            }
        .navigationBarTitle("Menu")
        }
    }
}

struct DetailsView: View {
    let menuItem: MenuItem
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                MenuItemCircleView(menuItem: menuItem)
                    .padding()
                Text(menuItem.name).font(.largeTitle)
                Spacer()
            }
            Text(menuItem.description)
                .padding(.top)
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text(menuItem.name), displayMode: .inline)
    }
}

struct MenuItemCircleView: View {
    let menuItem: MenuItem
    
    var body: some View {
        ZStack {
            Text(menuItem.photo)
                .shadow(radius: 3.0)
                .font(.largeTitle)
                .frame(width: 65, height: 85)
                .overlay(
                    Circle().stroke(Color.black, lineWidth: 3))
        }
    }
}

struct MenuItem: Identifiable {
    let id = UUID()
    let photo: String
    let name: String
    let description: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



/*
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
*/
