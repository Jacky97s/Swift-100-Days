//
//  ViewController.swift
//  TapCounter
//
//  Created by Nic on 2017/11/19.
//  Copyright © 2017年 Nic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    // MARK: - Outlets
    @IBOutlet weak var countLabel: UILabel!
    
    // MARK: - Properties
    var count = 0
    
    // MARK: - Interactions
    @IBAction func tapCounter(_ sender: UIButton) {
        increaseCount()
    }
    
    @IBAction func tapResetButton(_ sender: UIBarButtonItem) {
        count = 0
        countLabel.text = String(count)
    }
    
    @IBAction func longPressTapButton(_ sender: UILongPressGestureRecognizer) {
        increaseCount()
    }
    
    func increaseCount() {
        count = count + 1
        countLabel.text = String(count)
    }
}

