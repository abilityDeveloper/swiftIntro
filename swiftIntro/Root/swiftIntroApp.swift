//
//  swiftIntroApp.swift
//  swiftIntro
//
//  Created by Tallon Covell on 8/2/22.
//

import SwiftUI

@main
struct swiftIntroApp: App {
    //register app delegate for Firebase setup.
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var session = Session()
    
    var body: some Scene {
        WindowGroup {
            Trunk().environmentObject(session)
        }
    }
}
