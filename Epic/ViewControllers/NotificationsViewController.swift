//
//  NotificationsViewController.swift
//  Epic
//
//  Created by Al Hennessey on 10/08/2018.
//  Copyright © 2018 Epic. All rights reserved.
//

import UIKit

class NotificationsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    private var data = [Notification]()
    //private var data = [AnyObject]()
    var notificationTableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "cellReuseIdentifier")
        //Use this for nibs only, with no prototype cell
        
        notificationTableView.dataSource = self
        notificationTableView.delegate = self
        
        
        
        notificationTableView.rowHeight = UITableView.automaticDimension
        notificationTableView.estimatedRowHeight = 150.0
        
        
        notificationTableView.register(UINib(nibName: "NotificationStandardTableViewCell", bundle: nil), forCellReuseIdentifier: "NotificationStandardCell")
        
        
        
        
        
        //add data to the data array, this will be handled by the grpc service
//        for i in 0...10{
//            var finalText = ""
//            let textA = "This is the test of all tests"
//            for _ in 0...i{
//                finalText += textA
//            }
//            let timeA = "\(i)min"
//            let x = Notification(UID: i, name: finalText, time: timeA)
//            data.append(x!)
//        }
        let image1 = UIImage(named: "test1")
        let image2 = UIImage(named: "test2")
        let image3 = UIImage(named: "test3")
        let image4 = UIImage(named: "test4")
        let image5 = UIImage(named: "test5")
        let image6 = UIImage(named: "test6")
        let image7 = UIImage(named: "test7")
        let image8 = UIImage(named: "test8")
        
        data.append(Notification(UID: 1, name: "This is a test for the notification", time: "3 min", image: image1!)!)
        data.append(Notification(UID: 2, name: "Hi Al, this is a reminder for the app", time: "5 min", image: image2!)!)
        data.append(Notification(UID: 3, name: "Artificial Intelligence is the way forward, you cannot change that and this is the way forward", time: "15 min", image: image3!)!)
        data.append(Notification(UID: 4, name: "Haha you know what i mean, i this it will continue like that", time: "33 in", image: image4!)!)
        data.append(Notification(UID: 5, name: "Please be aware", time: "1 hour", image: image5!)!)
        data.append(Notification(UID: 6, name: "Failure is not an option, you have to get through it", time: "1 hour", image: image6!)!)
        data.append(Notification(UID: 7, name: "Everyone remain calm, we are in the process of building the app", time: "2 hour", image: image7!)!)
        data.append(Notification(UID: 8, name: "Take your time and remain calm, this is a test", time: "5 hour", image: image8!)!)

        // Do any additional setup after loading the view.
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        let img = UIImage()
        
        self.navigationController?.navigationBar.shadowImage = img
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    
    //Handle tableview data
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationStandardCell") as! NotificationStandardTableViewCell
        let text:Notification = data[indexPath.row] 
        cell.notificationMainLabel.text = text.notificationName
        cell.notificationTimeLabel.text = text.notificationTime
        cell.notificationThumbImageView.image = text.notificationImage
        cell.clipsToBounds = true
        
        return cell
        
        
        
    }
    
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 50.0
//    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        let alertController = UIAlertController(title: "Hint", message: "You have selected row \(indexPath.row).", preferredStyle: .alert)
//
//        let alertAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
//
//        alertController.addAction(alertAction)
//
//        present(alertController, animated: true, completion: nil)
//
//    }

}
