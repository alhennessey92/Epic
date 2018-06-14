//
//  MainViewController.swift
//  Epic
//
//  Created by Al Hennessey on 13/03/2018.
//  Copyright © 2018 Epic. All rights reserved.
//

import UIKit
import DynamicBlurView

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var aiData: [String] = []
    
    @IBOutlet weak var testUserView: UIView!
    @IBOutlet weak var wallpaperViewBG: UIImageView!
    @IBOutlet weak var gradientViewBG: UIView!
    
    @IBOutlet weak var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
        let startColor = UIColor(red: 2.0/255.0, green: 50.0/255.0, blue: 74.0/255.0, alpha: 1.0).cgColor
        let endColor = UIColor(red: 3.0/255.0, green: 155.0/255.0, blue: 229.0/255.0, alpha: 0.1).cgColor
        
        
        let gradientLayer:CAGradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [startColor,endColor] //Use diffrent colors
        
        gradientViewBG.layer.insertSublayer(gradientLayer, at: 0)
        
        
        
        //Instantiate nib files for different table cell layouts
        mainTableView.register(UINib(nibName: "MainDiscussionTableViewCell", bundle: nil), forCellReuseIdentifier: "mainDiscussionCell")
        
        
        mainTableView.dataSource = self
        mainTableView.delegate = self
        
       
        
//        let imagesListArray: [UIImage] = [
//            UIImage(named: "space-1.jpg")!,
//            UIImage(named: "space-2.jpg")!
//        ]
//        self.wallpaperViewBG.animationImages = imagesListArray;
//        self.wallpaperViewBG.animationDuration = 113.0
//        self.wallpaperViewBG.startAnimating()
        

        
        //Helper function temp
        manageAIData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return aiData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "mainDiscussionCell", for: indexPath) as? MainDiscussionTableViewCell else {
            fatalError("The dequeued cell is not an instance of MealTableViewCell.")
        }
        

        let text = aiData[indexPath.row]
        cell.cellLabel.text = text

        return cell

    }

    
    //Select the row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let activityObjSel = aiData[indexPath.row]
        let alertController = UIAlertController(title: "Hint", message: "You have selected row \(indexPath.row) and the name is \(activityObjSel).", preferredStyle: .alert)
        
        let alertAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        
        alertController.addAction(alertAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
    

    func manageAIData(){

        aiData = ["Hello", "No Hello", "Al"]
    }

}
