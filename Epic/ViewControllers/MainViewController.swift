//
//  MainViewController.swift
//  Epic
//
//  Created by Al Hennessey on 13/03/2018.
//  Copyright © 2018 Epic. All rights reserved.
//

import UIKit
import DynamicBlurView

class MainViewController: UIViewController {
    
    
    
    @IBOutlet weak var testUserView: UIView!
    @IBOutlet weak var wallpaperViewBG: UIImageView!
    @IBOutlet weak var gradientViewBG: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
        let startColor = UIColor(red: 2.0/255.0, green: 50.0/255.0, blue: 74.0/255.0, alpha: 1.0).cgColor
        let endColor = UIColor(red: 3.0/255.0, green: 155.0/255.0, blue: 229.0/255.0, alpha: 0.1).cgColor
        
        
        let gradientLayer:CAGradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [startColor,endColor] //Use diffrent colors
        
        gradientViewBG.layer.insertSublayer(gradientLayer, at: 0)
        
        
        
       
       
        
//        let imagesListArray: [UIImage] = [
//            UIImage(named: "space-1.jpg")!,
//            UIImage(named: "space-2.jpg")!
//        ]
//        self.wallpaperViewBG.animationImages = imagesListArray;
//        self.wallpaperViewBG.animationDuration = 113.0
//        self.wallpaperViewBG.startAnimating()
        

   
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIApplication.shared.statusBarStyle = .lightContent
    }
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.default
    }

    
   

  

}
