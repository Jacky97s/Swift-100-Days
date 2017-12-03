//
//  GroceriesTableViewController.swift
//  09-PullToRefresh
//
//  Created by Nic on 2017/12/3.
//  Copyright © 2017年 Nic. All rights reserved.
//

import UIKit

class GroceriesTableViewController: UITableViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Properties
    var data = ["Milk", "Apples", "Ham", "Eggs"]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groceriesCell", for: indexPath)

        cell.textLabel?.text = data[indexPath.row]

        return cell
    }
}
