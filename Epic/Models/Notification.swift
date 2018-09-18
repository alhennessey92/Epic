//
//  Notification.swift
//  Epic
//
//  Created by Al Hennessey on 21/08/2018.
//  Copyright © 2018 Epic. All rights reserved.
//

import Foundation
import UIKit

class Notification{
    
    var UID: Int?
    var notificationName: String?
    var notificationTime: String?
    var notificationImage: UIImage?
    //var displayType: TableDisplayTypes
    
    init?(UID: Int, name: String, time: String, image: UIImage){
        
        
        self.UID = UID
        self.notificationName = name
        self.notificationTime = time
        self.notificationImage = image
        
        
    }
}
