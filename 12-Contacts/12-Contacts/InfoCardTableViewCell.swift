//
//  InfoCardTableViewCell.swift
//  12-Contacts
//
//  Created by Nic on 2018/6/17.
//  Copyright © 2018年 Nic. All rights reserved.
//

import UIKit

class InfoCardTableViewCell: UITableViewCell {

    // MARK: - When Cell Loads
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: - Outlets
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
}
