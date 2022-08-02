//
//  ContentView.swift
//  swiftIntro
//
//  Created by Tallon Covell on 8/2/22.
//

import SwiftUI

struct ContentView: View {
    
    
    //MARK: - Body
    var body: some View {
        
        VStack {
            Spacer()
            Text("Hello, Talon!")
                .padding()
            Spacer()
        }
        .onAppear{ runFunctions() }
    }
    
    
    
    
    
    //MARK: - Functions
    
    /*
     /* Use your shortcuts */
     1.) Create a var of each type, and describe what they are, write it in a way than can help you remeber/understand quickly at a glance.:
            String, Int, Boolean, Date, Array, Dictionary Set, Double, Tuple
     
     2.) Create other var's of these types that are optional.
     
     3.) Create an empty var of type: Array, Dictionary, Set.
     
     4.) Create more emtpy var's of types:
            - Dictionary[String : Int]
            - Set<Int>
            - Dictionary<String, Set<Date>>
     
     5.) Underneath the variables you created in step 4. Assign values to those var's.
     
     6.) Create a final dictionary with each DataType within it.
     
     7.) Let me know when you feel confident in these and we'll move to:
        Anatomy of Functions.
        Declare Functions
        Declare Function w/ return types
     */
    
    
    func runFunctions() {
        stringInfo(withString: "someText")
        
    }
    
    
    //MARK: - String
    /*
     A <String> is: a series of characters that forms a collection.
     RESOURCES:
        https://developer.apple.com/documentation/swift/string
     */
    func stringInfo(withString: String) {
        let basicString: String = "someText"
//        let optionalString: <# #>
        
    }
    
    
    
    //MARK: - Dictionary
    /*
     A <Dictionary> is:
     */
    func dictionaryInfo() {
        
    }
    
    
}










//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
