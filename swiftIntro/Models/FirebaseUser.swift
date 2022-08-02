//
//  FirebaseUser.swift
//  swiftIntro
//
//  Created by Gio on 8/2/22.
//

import Foundation

class FirebaseUser: Codable {
    var uid: String
    var email: String?
    var displayName: String?

    init(uid: String, displayName: String?, email: String?) {
        self.uid = uid
        self.email = email
        self.displayName = displayName
    }
}
