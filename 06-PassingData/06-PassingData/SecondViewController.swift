//
//  SecondViewController.swift
//  06-PassingData
//
//  Created by Nic on 2017/11/26.
//  Copyright © 2017年 Nic. All rights reserved.
//

import UIKit

var sendMessage: String?

class SecondViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = sendMessage
    }
    
    // MARK: - Outlets
    @IBOutlet weak var messageLabel: UILabel!
    
}
