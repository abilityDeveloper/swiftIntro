//
//  dbRef.swift
//  swiftIntro
//
//  Created by Gio on 8/2/22.
//

import Firebase

func dbRef(_ node: String, _ addtlSubstrings: String?...) -> DatabaseReference {
    
    var addtlPath = ""
    addtlSubstrings.forEach {
        if let sub = $0 {
            addtlPath.append( sub.isEmpty ? "" : "/\(sub)")
        }
    }
    
    
    switch node {
    case FirKey.nOrgUserMemberships:
        return Database.database().reference(withPath: "\(node)\(addtlPath)")
    default:
        return Database.database().reference(withPath: "dbRef_ERR")
    }
    
}
