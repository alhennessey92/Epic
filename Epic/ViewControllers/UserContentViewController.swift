//
//  UserContentViewController.swift
//  Epic
//
//  Created by Al Hennessey on 10/08/2018.
//  Copyright © 2018 Epic. All rights reserved.
//

import UIKit

class UserContentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    var userContentTableView = UITableView()
    
    private var data = [AnyObject]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        userContentTableView.delegate = self
        userContentTableView.dataSource = self
        
        userContentTableView.rowHeight = UITableView.automaticDimension
        userContentTableView.estimatedRowHeight = 150.0
        
        userContentTableView.register(UINib(nibName: "MainTitleTableViewCell", bundle: nil), forCellReuseIdentifier: "MainTitleCell")
        userContentTableView.register(UINib(nibName: "StandardLightTopicTableViewCell", bundle: nil), forCellReuseIdentifier: "StandardTopicLight")
        
        
        //add data to the data array, this will be handled by the grpc service
        for i in 0...20{
            var finalText = ""
            let textA = "Hi Al"
            let name = "Gandhi"
            let memberCount = i*1256
            for _ in 0...i{
                finalText += textA
            }
            
            let x = Topic(UID: i, name: name, thumbURL: "1", description: finalText, memberCount: memberCount, privacy: "1", privacyPassword: "1")
            data.append(x!)
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    //Handle TableView
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row{
            
        case 0:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "MainTitleCell") as! MainTitleTableViewCell
            
            cell.titleLabel.text = "User Content"
            
            return cell
            
        default:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "StandardTopicLight") as! StandardLightTopicTableViewCell
            let text:Topic = data[indexPath.row] as! Topic
            cell.mainTitleLabel.text = text.name
            cell.descriptionTitleLabel.text = text.description
            let memberCount = String(text.memberCount!)
            cell.followNoLabel.text = "\(memberCount) Following"
            
            
            
            
            return cell
            
        }
        
        
    }


}
