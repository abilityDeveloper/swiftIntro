//
//  FirebaseAuth.swift
//  swiftIntro
//
//  Created by Gio on 8/2/22.
//

import Firebase

class FirebaseAuth: ObservableObject {
    
    func listen(_ handler: @escaping ((Auth, Firebase.User?) -> Void)) -> AuthStateDidChangeListenerHandle {
        Auth.auth().addStateDidChangeListener( handler)
    }
    
}
