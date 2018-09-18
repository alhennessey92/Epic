//
//  SearchViewController.swift
//  Epic
//
//  Created by Al Hennessey on 10/08/2018.
//  Copyright © 2018 Epic. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    

    @IBOutlet var searchTableView: UITableView!
    
    var searchData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        
        
        
        //Handle TableView Stuff
        searchTableView.dataSource = self
        searchTableView.delegate = self
        
        
        
        searchTableView.rowHeight = UITableViewAutomaticDimension
        searchTableView.estimatedRowHeight = 150.0
        
        
        searchTableView.register(UINib(nibName: "PreSearchTableViewCell", bundle: nil), forCellReuseIdentifier: "PreSearchCell")
        
        
        searchData.append("Hello")
        searchData.append("Al is great")
        searchData.append("Halo 3")
        searchData.append("Alfie the great")
        searchData.append("Bananas are yellow and you alksdk akns dkan sdjn asn dnaj sdn asmnd mads")
        searchData.append("All is great in the world")
        searchData.append("Mars is the next destination")
        searchData.append("Alfie and Zara")
        searchData.append("Artificial Intelligence")
        searchData.append("Hello World")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        let img = UIImage()
        
        self.navigationController?.navigationBar.shadowImage = img
        
    }
    
    
    
    //Handle TableView Functions
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PreSearchCell") as! PreSearchTableViewCell
        let text = searchData[indexPath.row]
        cell.preSearchMainLabel.text = text
        
        return cell
        
    }

  

}
