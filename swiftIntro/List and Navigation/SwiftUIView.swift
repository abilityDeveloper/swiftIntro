//
//  SwiftUIView.swift
//  swiftIntro
//
//  Created by Talon Covell on 8/12/22.
//
/*
import SwiftUI

struct MenuView : View {
    private let menuItem: [MenuItems] = [
    MenuItems(photo: "🥞", name: "Breakfast",
              description: "Served from 6 - 11 daily."),
    MenuItems(photo: "🍔", name: "Lunch",
              description: "Served from 11 - 4  daily"),
    MenuItems(photo: "🍝", name: "Dinner",
              description: "Served from 4 - 11 daily."),
]
    
    
    var body: some View {
        NavigationView {
            List(menuItem) { menuItem in
                ZStack {
                    Text(menuItem.photo)
                        .shadow(radius: 3.0)
                        .font(.largeTitle)
                        .frame(width: 65, height: 85)
                        .overlay(
                            Circle().stroke(Color.black, lineWidth: 3)
                        )
                }
                Text(menuItem.name)
                    .font(.headline)
            }
        }
        .navigationBarTitle("Menu")
    }
}

struct MenuItems: Identifiable {
    let id = UUID()
    let photo: String
    let name: String
    let description: String
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
*/
