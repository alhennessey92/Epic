//
//  ViewController2.swift
//  Epic
//
//  Created by Al Hennessey on 21/09/2018.
//  Copyright © 2018 Epic. All rights reserved.
//

import UIKit
import SwiftyZeroMQ

class MainViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        //Test Zeromq
        // Print ZeroMQ library and our framework version
        let (major, minor, patch, versionString) = SwiftyZeroMQ.version
        print("ZeroMQ library version is \(major).\(minor) with patch level .\(patch)")
        print("ZeroMQ library version is \(versionString)")
        print("SwiftyZeroMQ version is \(SwiftyZeroMQ.frameworkVersion)")
        
        // label
        let labelInst = UILabel()
        self.view.addSubview(labelInst)
        labelInst.text = "Page 2"
        labelInst.translatesAutoresizingMaskIntoConstraints = false
        labelInst.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50).isActive = true
        labelInst.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20).isActive = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
