//
//  MainViewController.swift
//  Epic
//
//  Created by Al Hennessey on 13/03/2018.
//  Copyright © 2018 Epic. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    


    private var aiData: [String] = []
    
    
    @IBOutlet weak var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        mainTableView.dataSource = self
        mainTableView.delegate = self

        manageAIData()
        // Do any additional setup after loading the view.
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "aiDiscussionCell") as! AIDiscussionTableViewCell

        let text = aiData[indexPath.row]

        cell.aiDiscussionLabel.text = text

        return cell

    }


    func manageAIData(){

        aiData = ["Hello", "No Hello", "Al"]
    }
    
    
    

}
