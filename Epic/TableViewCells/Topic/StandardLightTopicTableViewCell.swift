//
//  StandardLightTopicTableViewCell.swift
//  Epic
//
//  Created by Al Hennessey on 10/09/2018.
//  Copyright © 2018 Epic. All rights reserved.
//

import UIKit

class StandardLightTopicTableViewCell: UITableViewCell {

    
    @IBOutlet var followButtonView: UIView!
    @IBOutlet var followNoLabel: UILabel!
    @IBOutlet var descriptionTitleLabel: UILabel!
    @IBOutlet var mainTitleLabel: UILabel!
    @IBOutlet var mainImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        mainImageView.layer.cornerRadius = 4.0
        followButtonView.layer.cornerRadius = 4.0
        
        followButtonView.layer.borderWidth = 1.0
        followButtonView.layer.borderColor = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0).cgColor
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    public func addFollowerButton(followerNo: Int, startColor: CGColor, endColor: CGColor){
        
//        let startColor = UIColor(red: 126.0/255.0, green: 87.0/255.0, blue: 194.0/255.0, alpha: 1.0).cgColor
//        let endColor = UIColor(red: 181.0/255.0, green: 144.0/255.0, blue: 227.0/255.0, alpha: 1.0).cgColor
        
        
        let gradientLayer:CAGradientLayer = CAGradientLayer()
        gradientLayer.frame.size = followButtonView.frame.size
        
        
        gradientLayer.colors = [startColor,endColor] //Use diffrent colors
        gradientLayer.startPoint = CGPoint(x:0.0, y:0.0)
        gradientLayer.endPoint = CGPoint(x:1.0, y:1.0)
        followButtonView.layer.insertSublayer(gradientLayer, at: 0)
        
        
        
    }
    
    
}
