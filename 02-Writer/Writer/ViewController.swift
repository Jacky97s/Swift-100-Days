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
        NotificationCenter.default.addObserver(self, selector: #selector(detectIfSettingChanged), name: UserDefaults.didChangeNotification, object: nil)
    }
    
    // MARK: - Outlets

    @IBOutlet weak var textView: UITextView!
    
    // MARK: - Functions
    
    @objc func detectIfSettingChanged() {
        print("Night Mode Setting is: \(UserDefaults.standard.bool(forKey: "nightMode"))")
    }
}

