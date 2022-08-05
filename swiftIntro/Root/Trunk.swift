//
//  Trunk.swift
//  swiftIntro
//
//  Created by Gio on 8/2/22.
//

import SwiftUI

struct Trunk: View {
    @EnvironmentObject var session: Session
    
    
    //MARK: - Body
    var body: some View {
        
        Group {
//            if (session.firebaseUser != nil) {
                Menu()
            //} else {
                #warning("Continue")
            //    Text("SignIn() view to be added here")
            //}
        }
//        .onAppear{ listen() }
    }
    
    
    //MARK: - Functions
    private func listen() {
        session.authListen()
    }
}











//MARK: - Preview
struct Trunk_Previews: PreviewProvider {
    static var previews: some View {
        Trunk()
    }
}
