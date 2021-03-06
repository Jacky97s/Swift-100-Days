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
        //print("Night Mode Setting is: \(UserDefaults.standard.bool(forKey: "nightMode"))")
        
        if UserDefaults.standard.bool(forKey: "nightMode") == true {
            view.backgroundColor = UIColor.black
            textView.textColor = UIColor.white
            textView.keyboardAppearance = UIKeyboardAppearance.dark
            UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
        } else {
            view.backgroundColor = UIColor.white
            textView.textColor = UIColor.black
            textView.keyboardAppearance = UIKeyboardAppearance.default
            UIApplication.shared.statusBarStyle = UIStatusBarStyle.default
        }
    }
}

