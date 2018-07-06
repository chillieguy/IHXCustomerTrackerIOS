//
//  FirstVC.swift
//  IHXCustomerTracker
//
//  Created by Chuck Underwood on 7/5/18.
//  Copyright © 2018 Chuck Underwood. All rights reserved.
//

import UIKit

class FirstVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = LeadTableViewCell()
        
        
        return cell
    }

}

