//
//  ViewController.swift
//  UiSlider
//
//  Created by Nic on 2017/11/25.
//  Copyright © 2017年 Nic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Interactions

    @IBAction func dragSlider(_ sender: UISlider) {
        
        print("\(sender.value)")
    }
}

