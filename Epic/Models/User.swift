//
//  User.swift
//  Epic
//
//  Created by Al Hennessey on 19/03/2018.
//  Copyright © 2018 Epic. All rights reserved.
//

import Foundation

class User{
    
    var UID: Int?
    var firstName: String?
    var lastName: String?
    var dateStarted: Date?
    var status: String? // Status of the user, good, banned, under review - need to change to enum
    var thumbURL: String?
    var authMethod: String? // The method used by user to authenticate, mobile, email, fingerprint
    
    init?(UID: Int, firstname: String, lastname: String, dateStarted: Date, status: String, thumbURL: String, authMethod: String){
        
        
        self.UID = UID
        self.firstName = firstname
        self.lastName = lastname
        self.dateStarted = dateStarted
        self.status = status
        self.thumbURL = thumbURL
        self.authMethod = authMethod
        
        
        
    }
}
