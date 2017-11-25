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
        createToolbar()
    }
    
    // MARK: - Outlets
    @IBOutlet weak var subtotalTextfield: UITextField!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    // MARK: - Interactions
    @IBAction func dragSlider(_ sender: UISlider) {
        tipPercentLabel.text = "Tip (\(Int(sender.value))%)"
    }
    
    // MARK: - Properties
    let model = Model()
    
    // MARK: - Functions
    func createToolbar() {
        let toolbar = UIToolbar()
        toolbar.barStyle = .default
        toolbar.sizeToFit()
        
        // create barbuttonitems
        
        let doneButton = UIBarButtonItem(
            barButtonSystemItem: .done,
            target: self,
            action: #selector(dismissKeyboard))
        
        let flexibleSpace = UIBarButtonItem(
            barButtonSystemItem: .flexibleSpace,
            target: self,
            action: nil)
        
        // add items to toolbar
        toolbar.setItems([flexibleSpace, doneButton], animated: true)
        
        // add toolbar to keyboard
        subtotalTextfield.inputAccessoryView = toolbar
    }
    
    @objc func dismissKeyboard() {
        subtotalTextfield.resignFirstResponder()
        
        if subtotalTextfield.text?.characters.count == 0 {
            subtotalTextfield.text = "$0.00"
        } else {
            model.subtotalFromTextField = subtotalTextfield.text!
            model.tipPercentFromSlider = Int(tipPercentSlider.value)
            
            // update labels
            subtotalTextfield.text = model.subtotalAsCurrency
            tipAmountLabel.text = model.tipAmountAsCurrency
            totalAmountLabel.text = model.totalAmountAsCurrency
        }
    }
}

