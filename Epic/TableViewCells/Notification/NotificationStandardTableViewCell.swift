//
//  NotificationStandardTableViewCell.swift
//  Epic
//
//  Created by Al Hennessey on 07/09/2018.
//  Copyright © 2018 Epic. All rights reserved.
//

import UIKit

class NotificationStandardTableViewCell: UITableViewCell {

    @IBOutlet var notificationThumbImageView: UIImageView!
    
    @IBOutlet var notificationMainLabel: UILabel!
    @IBOutlet var notificationTimeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        notificationThumbImageView.layer.cornerRadius = 20
        notificationThumbImageView.layer.masksToBounds = true
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
