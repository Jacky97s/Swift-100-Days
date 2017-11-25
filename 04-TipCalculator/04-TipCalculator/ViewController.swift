//
//  ViewController.swift
//  04-TipCalculator
//
//  Created by Nic on 2017/11/25.
//  Copyright © 2017年 Nic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        subtotalTextfield.becomeFirstResponder()
    }
    
    // MARK: - Outlets
    @IBOutlet weak var subtotalTextfield: UITextField!
}

