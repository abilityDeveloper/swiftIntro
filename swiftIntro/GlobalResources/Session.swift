//
//  Session.swift
//  swiftIntro
//
//  Created by Gio on 8/2/22.
//

import Firebase
import FirebaseAnalytics
import Combine


class Session: ObservableObject {
    @Published var firebaseUser: FirebaseUser?
    
    
    func authListen() {
        _ = FirebaseAuth().listen({ (auth, user) in
            if let user = user {
                self.firebaseUser = FirebaseUser(uid: user.uid, displayName: user.displayName, email: user.email)
                self.initData()
            } else {
                self.firebaseUser = nil
            }
        })
    }
    
    
    func initData() {
        
    }
    
    
    
    
    
    
    
    func createNodeData() {
        var ref = Database.database().reference()
        
        ref = ref.child("UM/\("lFiJUc8sy8W2NlKQ6IddtbA4WiI3")")
        let obj = "-N8UnBJanU5ElLMEzKoK"
        
        
        ref.setValue(obj) { (error, ref) in
            if let error = error {
                print(error)
                return
            }
            print("Success!")
        }
    }
    
}
