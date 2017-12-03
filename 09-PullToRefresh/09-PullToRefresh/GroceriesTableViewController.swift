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
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add
            , target: self, action: nil)
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
