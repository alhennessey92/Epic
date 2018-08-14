//
//  NotificationsViewController.swift
//  Epic
//
//  Created by Al Hennessey on 10/08/2018.
//  Copyright © 2018 Epic. All rights reserved.
//

import UIKit

class NotificationsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    

    private var data: [String] = []
    @IBOutlet var notificationTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "cellReuseIdentifier")
        //Use this for nibs only, with no prototype cell
        
        notificationTableView.dataSource = self
        notificationTableView.delegate = self
        
        
        for i in 0...1000{
            
            data.append("\(i)")
        }

        // Do any additional setup after loading the view.
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "notificationReuseIdentifier") as! NotificationTableViewCell
        
        let text = data[indexPath.row]
        
        cell.cellLabel.text = text
        
        return cell
    }
    
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let alertController = UIAlertController(title: "Hint", message: "You have selected row \(indexPath.row).", preferredStyle: .alert)
        
        let alertAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        
        alertController.addAction(alertAction)
        
        present(alertController, animated: true, completion: nil)
        
    }

}
