//
//  NewGroceryViewController.swift
//  09-PullToRefresh
//
//  Created by Nic on 2017/12/10.
//  Copyright © 2017年 Nic. All rights reserved.
//

import UIKit

class NewGroceryViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
    }
    
    // MARK: - Outlets
    @IBOutlet weak var textView: UITextView!
    
    // MARK: - Interactions
    @IBAction func tapDoneButton(_ sender: UIBarButtonItem) {
        model.data.append(textView.text)
        let _ = navigationController?.popViewController(animated: true)
    }
}
