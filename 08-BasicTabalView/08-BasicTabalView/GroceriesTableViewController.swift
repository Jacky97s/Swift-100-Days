//
//  GroceriesTableViewController.swift
//  08-BasicTabalView
//
//  Created by Nic on 2017/12/3.
//  Copyright © 2017年 Nic. All rights reserved.
//

import UIKit

class GroceriesTableViewController: UITableViewController {
    
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Properties
    
    var groceries = ["Milk", "Apples", "Ham", "Eggs", "Pancakes"]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groceries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groceriesCell", for: indexPath)

        cell.textLabel?.text = groceries[indexPath.row]

        return cell
    }
}
