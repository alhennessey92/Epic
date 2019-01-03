//
//  ViewController1.swift
//  Epic
//
//  Created by Al Hennessey on 21/09/2018.
//  Copyright © 2018 Epic. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        // label
        let labelInst = UILabel()
        self.view.addSubview(labelInst)
        labelInst.text = "Page 3"
        labelInst.translatesAutoresizingMaskIntoConstraints = false
        labelInst.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50).isActive = true
        labelInst.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20).isActive = true
        
        
//        //Handle Tableview
//        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
//        let displayWidth: CGFloat = self.view.frame.width
//        let displayHeight: CGFloat = self.view.frame.height
//
//        myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
//        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
//        myTableView.dataSource = self
//        myTableView.delegate = self
//        self.view.addSubview(myTableView)
//
//
//        /////////////////////////////////////////////////////////////
//
//        myTableView.rowHeight = UITableView.automaticDimension
//        myTableView.estimatedRowHeight = 150.0
//        myTableView.separatorStyle = .none
//        myTableView.backgroundColor = .clear
//
//        myTableView.register(UINib(nibName: "NotificationStandardTableViewCell", bundle: nil), forCellReuseIdentifier: "NotificationStandardCell")
//
//        let image1 = UIImage(named: "test1")
//        let image2 = UIImage(named: "test2")
//        let image3 = UIImage(named: "test3")
//        let image4 = UIImage(named: "test4")
//        let image5 = UIImage(named: "test5")
//        let image6 = UIImage(named: "test6")
//        let image7 = UIImage(named: "test7")
//        let image8 = UIImage(named: "test8")
//
//        let image11 = UIImage(named: "test1")
//        let image21 = UIImage(named: "test2")
//        let image31 = UIImage(named: "test3")
//        let image41 = UIImage(named: "test4")
//        let image51 = UIImage(named: "test5")
//        let image61 = UIImage(named: "test6")
//        let image71 = UIImage(named: "test7")
//        let image81 = UIImage(named: "test8")
//
//        data.append(Notification(UID: 1, name: "This is a test for the notification", time: "3 min", image: image1!)!)
//        data.append(Notification(UID: 2, name: "Hi Al, this is a reminder for the app", time: "5 min", image: image2!)!)
//        data.append(Notification(UID: 3, name: "Artificial Intelligence is the way forward, you cannot change that and this is the way forward", time: "15 min", image: image3!)!)
//        data.append(Notification(UID: 4, name: "Haha you know what i mean, i this it will continue like that", time: "33 in", image: image4!)!)
//        data.append(Notification(UID: 5, name: "Please be aware", time: "1 hour", image: image5!)!)
//        data.append(Notification(UID: 6, name: "Failure is not an option, you have to get through it", time: "1 hour", image: image6!)!)
//        data.append(Notification(UID: 7, name: "Everyone remain calm, we are in the process of building the app", time: "2 hour", image: image7!)!)
//        data.append(Notification(UID: 8, name: "Take your time and remain calm, this is a test", time: "5 hour", image: image8!)!)
//
//        data.append(Notification(UID: 11, name: "This is a test for the notification", time: "3 min", image: image11!)!)
//        data.append(Notification(UID: 21, name: "Hi Al, this is a reminder for the app", time: "5 min", image: image21!)!)
//        data.append(Notification(UID: 31, name: "Artificial Intelligence is the way forward, you cannot change that and this is the way forward", time: "15 min", image: image31!)!)
//        data.append(Notification(UID: 41, name: "Haha you know what i mean, i this it will continue like that", time: "33 in", image: image41!)!)
//        data.append(Notification(UID: 51, name: "Please be aware", time: "1 hour", image: image51!)!)
//        data.append(Notification(UID: 61, name: "Failure is not an option, you have to get through it", time: "1 hour", image: image61!)!)
//        data.append(Notification(UID: 71, name: "Everyone remain calm, we are in the process of building the app", time: "2 hour", image: image71!)!)
//        data.append(Notification(UID: 81, name: "Take your time and remain calm, this is a test", time: "5 hour", image: image81!)!)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
        
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.largeTitleTextAttributes = textAttributes
        
        //This seems hacky as it may not work with icons, maybe change bar tint color
        let textAttributesSmall = [NSAttributedString.Key.foregroundColor:UIColor.clear]
        navigationController?.navigationBar.titleTextAttributes = textAttributesSmall
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    //Handle tableview data
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return data.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationStandardCell") as! NotificationStandardTableViewCell
//        let text:Notification = data[indexPath.row]
//        cell.notificationMainLabel.text = text.notificationName
//        cell.notificationTimeLabel.text = text.notificationTime
//        cell.notificationThumbImageView.image = text.notificationImage
//        cell.clipsToBounds = true
//        cell.backgroundColor = .clear
//        return cell
//
//
//
//    }
    
    
    
}
