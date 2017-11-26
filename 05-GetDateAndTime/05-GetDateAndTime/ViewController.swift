//
//  ViewController.swift
//  05-GetDateAndTime
//
//  Created by Nic on 2017/11/26.
//  Copyright © 2017年 Nic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDateAndTime()
    }
    
    // MARK: - Outlets
    @IBOutlet weak var dateLabel: UILabel!
    
    // MARK: - Intercations
    @IBAction func tapRefreshButton(_ sender: UIButton) {
        updateDateAndTime()
    }
    
    // MARK: - Properties
    let dateFormatter = DateFormatter()
    
    // MARK: - Functions
    
    func updateDateAndTime() {
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        dateLabel.text = dateFormatter.string(from: Date())
    }
}

