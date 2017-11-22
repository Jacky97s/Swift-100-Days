//
//  ViewController.swift
//  Writer
//
//  Created by Nic on 2017/11/19.
//  Copyright © 2017年 Nic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
        
        print("Night Mode Setting is: \(UserDefaults.standard.bool(forKey: "nightMode"))")
    }
    
    // MARK: - Outlets

    @IBOutlet weak var textView: UITextView!
}

