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
        intInfo()
        boolInfo()
        dateInfo()
        arrayInfo()
        emptyArray()
        dictionaryInfo()
        doubleNumbers()
        tupleInfo()
        setInfo()
        dictTypes()
        listInfo()
    }
    
    struct Person {
        let name: String
        let year: Int
        let state: String
        let city: String
        
        func nickname() -> String {
            return state
        }
            

        func birthday(yr: Int) -> Date {
            return Date()
        }
    }

    
    
    func listInfo() {
        var people: [Person] = []
        var talon = Person(name: "Talon",
                           year: 1993,
                           state: "California",
                           city: "Woodland")
        people.append(talon)
        people.append(Person(name: "John",
                             year: 1990,
                             state: "Arkansas",
                             city: "LittleRock"))
        people[1].nickname()
        let thing = people[0].birthday(yr: people[0].year)
    }

    /*
     Muteable = Can be changed/mutated.
     var = variable that can be changed
     let = a constant that does not change
     */
    //MARK: - String
    /*
     A <String> is: a series of characters that forms a collection.
     RESOURCES:
        https://developer.apple.com/documentation/swift/string
     */
    func stringInfo(withString: String) {
        let basicString: String = "someText"
        let optionalString: String? = nil
        
        print(basicString)
    }
    
    /*
     An <Int> is any number positive, negative or zero
     */
    func intInfo() {
        let basicInt: Int = 0
        var optionalInt: Int? = nil
        
        var myInt = Int()
        myInt = myInt + 1
        let inputNum = (myInt += 1)
        return inputNum
        
        
    }
    
    /*
     A <Boolean> is a true or false operator
     that is usually used with if/else statements
     */
    func boolInfo() {
        let basicBool: Bool = true
        let optionalBool: Bool? = nil
        
        
        var comOperators = (basicBool, optionalBool)
        let int = 5
        if int == 5
        {
            print(comOperators)
        }
    }
    
    /*
     A <Date> value encapsulates a single point in time,
     independent of any particular time zone or calendarical system.
    */
    
    func dateInfo() {
        let currentDate: Date = Date()
        let optionalDate: Date? = nil
    }
    
    /*
     An <Array> stores values of the same type in an ordered list.
     It can be a list of strings, ints, dictionaries etc...
     */
    
    func arrayInfo() {
        let basicArray: [String] = []
        let optionalArray: [String]? = nil
        let thisList = [basicArray: ("one", "two", "three")];
        print(thisList)
    }
    
    func emptyArray() {
        var thisArray: [Int] = [] //Creates empty array. Must have a type.
        thisArray.append(7) //adds a value to the end of the array
        thisArray.insert(6, at: 0) //Inserts a value at a certain location in the array.
       //In this case it will put 6 at index 0 so 6 will appear before 7.
    }
    
    
    //MARK: - Dictionary
    /*
     A <Dictionary>  stores associations between keys of the same type
     and values of the same type in a collection with no defined ordering.
     Each value is associated with a unique key,
     which acts as an identifier for that value within the dictionary.
     A dictionary lets you look up values based on their identifying name
     */
    // This: [:] initalizes an empty dictionary ["thisIsTheKey": "thisIsTheValue"]
    func dictionaryInfo() {
        let basicDictionary: [String : String] = ["XNA": "BentonvilleAirport"]
        let optionalDictionary: [String : String]? = nil
        let emptyDict: [Int:String] = [:]
        
        var multiTypeDict: [String : Set<Date?>] = [:]
        multiTypeDict = ["010" : [Date(), Date(), nil ]]
        
    }
    
    /*
     A <double> is like a float but with more precision.
     A double has at least 15 decimal places.
     Swift will always infer double rather than float
     */
     
    func doubleNumbers() {
        var basicDouble: Double = 20.5432563
        let optionalDouble: Double? = nil
    
        
    }
    
    /*
     <Tuples> group multiple values into a single compound value.
     The values within a tuple can be of any type and don’t have to be of the same type as each other.
     You can pull a specific value from a tuple by giving its index number. (0,   1,   2)
    */
    
    func tupleInfo() {
        var myInt: Int = 0
        var myString: String = " "
        var myBool: Bool = true
        var basicTuple = (myInt, myString, myBool)
        basicTuple.1 = ("this is a string")
        let optionalTuple: (Int, String)? = nil
        
        print("The integer is \(myInt) in placeholder 0.", "\(myString) in placeholder 1.")
    }
    
    /*
     Sets are unordered collections of unique values of the same type(str, int, float).
     Like types of food(spaghetti, steak, potatoes) or music genres(rock, pop, classical)
     */
    func setInfo() {
        var basicSet: Set<String> = [] //creates an empty set. Must have type.
        var optionalSet: Set<String>? = nil
        basicSet = ["a", "b", "c"] //puts values of type string in set
        
        print("basicSet is of type Set<String> with \(basicSet.count) items.")
        // Prints "letters is of type Set<Character> with 3 items."
    }
    
    //func findDictValues() {
    //    var dict = [String : String]().self
    //    dictTypes() = dict
    //    for (key, value) in dict {
    //        print(dictTypes(), "\(key) : \(value)")
    
    ///Swift Data Types
    enum DataType {
        case lobster
        case none
    }
    
    func dictTypes() {
        var enumType: DataType
        var basicSet: Set<Int> = []
        var tempDict: [String: Any] = [:]
        tempDict["String"]
        tempDict["Int"] = 29
        tempDict["Bool"] = true
        tempDict["Date"] = Date() //current date
        tempDict["Array"] = [1, 2, 3, 4]
        tempDict["Dict"] = ["key" : "value"]
        tempDict["Set"] = basicSet
        tempDict["Double"] = 7.345
        var newDict = Array(tempDict.values)
        
        for (value) in tempDict  {
            print("\(value)")
            
            switch value.value {
                case is String:
                    enumType = DataType.lobster
                case is Int:
                    enumType = DataType.lobster
                case is Bool:
                    enumType = DataType.lobster
                case is Date:
                    enumType = DataType.lobster
                case is Array<Any>:
                    enumType = DataType.lobster
                case is Dictionary <String, Any>:
                    enumType = DataType.lobster
                case is Set <Int>:
                    enumType = DataType.lobster
                case is Double:
                    enumType = DataType.lobster
                default:
                    enumType = DataType.none
                    print()
            }
        }
            
        /*
         Create the enum DataTypes for each data type.
         Assign a variable to the enum datatype in each respoective case
         */
        
        
        
        
        //switch value {
        //case is Bool:
        //    print("Bool")
        //case is Double:
        //   print(double)
        //}
        
    
    /*
     A struct is used to store variables of different data types.
     name = variable type = String
     Then the func can be used to call the struct("Element")
     and assign it to a variable("list") that we can change/append
     by using another variable or multiple variables("info", "info2" etc...)
     */
    
        /*
         Create the following function 'types' in a new File named: Funcs
            - func donut(varName: <Type>) {}
            - func(value1: <T>, value2: <T>) {}
            - func(value1: <T>, value2: <T>) -> Set<String> {}
            - func -> Tuple {}  //Maybe?
            - func(value1: <T>, value2: <T>) ->  {}
         
            - How to create Error or Error type
            - How to create function w/ completion block.
            - func asyncFunc(varName: [String], completion: ((Bool, Error) -> Void)) {}
            - recursive function.
         */
        
    
}











//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }
}
