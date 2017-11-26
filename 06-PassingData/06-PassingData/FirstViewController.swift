//
//  ViewController.swift
//  06-PassingData
//
//  Created by Nic on 2017/11/26.
//  Copyright © 2017年 Nic. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
    }
    
    // MARK: - Outlets
    @IBOutlet weak var textView: UITextView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        sendMessage = textView.text
    }
    
}

