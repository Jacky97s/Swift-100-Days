//
//  ViewController.swift
//  11-CircleImage
//
//  Created by Nic on 2018/6/17.
//  Copyright © 2018年 Nic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.layoutIfNeeded()
        imageView.layer.cornerRadius = imageView.frame.width/2
        imageView.layer.masksToBounds = true
    }
    
    // MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!
}

