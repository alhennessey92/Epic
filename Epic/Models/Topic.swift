//
//  Topic.swift
//  Epic
//
//  Created by Al Hennessey on 19/03/2018.
//  Copyright © 2018 Epic. All rights reserved.
//

import Foundation

class Topic{
    
    var UID: Int? // Topic Unique ID
    var name: String?
    var thumbURL: String?
    var description: String?
    var memberCount: Int?
    var privacy: String? // Status of the topic in terms of public, private etc...
    var privacyPassword: String? // Password for joining or commiting to topic
    
    
    init?(UID: Int, name: String, thumbURL: String, description: String, memberCount: Int, privacy: String, privacyPassword: String){
        
        self.UID = UID
        self.name = name
        self.thumbURL = thumbURL
        self.description = description
        self.memberCount = memberCount
        self.privacy = privacy
        self.privacyPassword = privacyPassword
        
    }
}
