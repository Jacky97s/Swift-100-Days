//
//  PersonTableViewCell.swift
//  12-Contacts
//
//  Created by Nic on 2018/6/17.
//  Copyright © 2018年 Nic. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    // MARK: - When Cell Loads
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // MARK: - Outlets
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
}
