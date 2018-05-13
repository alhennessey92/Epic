//
//  Discussion.swift
//  Epic
//
//  Created by Al Hennessey on 19/03/2018.
//  Copyright © 2018 Epic. All rights reserved.
//

import Foundation

class Discussion {
    
    var UID: Int? // Unique ID of the discussion
    var name: String? //Discussion Name, Name of the discussion
    var topicAssoc: String? // Topic Association, which topic the discussion is assigned to
    var thumbURL: String? // HTML URL to the discussion image, google storage
    var dateStarted: Date? //Date the discussion was started
    var memberCount: Int? //Member Count, how many users have joined the discussion
    var shareCount: Int? //Share Count, how many share the discussion has
    var CID: Int? //Creator ID - user who created the discussion
    var status: String? //Current status of the discussion - open, closed - need to change to enum
    var memberStatus: String? //Current status of the membership joining status, whether a user cna join - full, open, nearing full - need to change to enum
    
    init?(UID: Int, name: String, topicAssoc: String, thumbURL: String, dateStarted: Date, memberCount: Int, shareCount: Int, CID: Int, status: String, memberStatus: String){
        
        self.UID = UID
        self.name = name
        self.topicAssoc = topicAssoc
        self.thumbURL = thumbURL
        self.dateStarted = dateStarted
        self.memberCount = memberCount
        self.shareCount = shareCount
        self.CID = CID
        self.status = status
        self.memberStatus = memberStatus
        
    }
 
}
