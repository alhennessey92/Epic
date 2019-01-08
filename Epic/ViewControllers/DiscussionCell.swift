//
//  DiscussionCell.swift
//  Epic
//
//  Created by Al Hennessey on 03/01/2019.
//  Copyright © 2019 Epic. All rights reserved.
//

import UIKit

class DiscussionCell: UICollectionViewCell {
    
//    let bearImageView: UIImageView = {
//        let imageView = UIImageView(image: #imageLiteral(resourceName: "bear_first"))
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.contentMode = .scaleAspectFit
//        return imageView
//    }()
//
//    let descriptionTextView: UITextView = {
//        let textView = UITextView()
//
//        let attributedText = NSMutableAttributedString(string: "Join us today in our fun and games!", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
//
//        attributedText.append(NSAttributedString(string: "\n\n\nAre you ready for loads and loads of fun? Don't wait any longer! We hope to see you in our stores soon.", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.gray]))
//
//        textView.attributedText = attributedText
//        textView.translatesAutoresizingMaskIntoConstraints = false
//        textView.textAlignment = .center
//        textView.isEditable = false
//        textView.isScrollEnabled = false
//        return textView
//    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    private func setupLayout() {
        let mainContainerView = UIView()
        addSubview(mainContainerView)
        mainContainerView.translatesAutoresizingMaskIntoConstraints = false
        mainContainerView.backgroundColor = .blue
        
        mainContainerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        mainContainerView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        mainContainerView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        mainContainerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

