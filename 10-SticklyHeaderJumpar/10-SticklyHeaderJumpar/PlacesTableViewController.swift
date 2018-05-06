//
//  PlacesTableViewController.swift
//  10-SticklyHeaderJumpar
//
//  Created by Nic on 2017/12/18.
//  Copyright © 2017年 Nic. All rights reserved.
//

import UIKit

class PlacesTableViewController: UITableViewController {
    
    // MARK: View Did Load
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: Properties
    let alphabetArray = Array(model.places.keys).sorted()

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return model.places.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let letter = alphabetArray[section]
        switch section {
        case 0...14:
            return model.places[letter]!.count
        default:
            return 1
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "placesCell", for: indexPath)
        let letter = alphabetArray[indexPath.section]
        
        switch indexPath.section {
        case 0...14:
            cell.textLabel?.text = model.places[letter]?[indexPath.row]
        default:
            break
        }

        return cell
    }
}
