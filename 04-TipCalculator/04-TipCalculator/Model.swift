//
//  Model.swift
//  04-TipCalculator
//
//  Created by Nic on 2017/11/26.
//  Copyright © 2017年 Nic. All rights reserved.
//

import Foundation

class Model {
    
    // Basic Logic
    // 1. take input
    // 2. calculate new values -> rest
    // 3. return as string for labels
    
    // Logic
    // accept subtotal as string
    // accept tipPercent as Int
    
    // convert subtotal to NSDecimal for calculation
    // convert tipPercent to NSDecimal for calcuation
    
    // calculate tipAmount
    // calculayte totalAmount
    
    // convert subtotal to Currency
    // convert tipAmount to Cuttency
    // convert total to Currency
    
    var subtotalFromTextField = "0.00"
    var tipPercentFromSlider = 15
    
    // Decimals for Calculation
    var subtotalAsDecimal: NSDecimalNumber {
        return NSDecimalNumber(string: subtotalFromTextField)
    }
    
    var tipPercent: NSDecimalNumber {
        return NSDecimalNumber(value: Double(tipPercentFromSlider)/100)
    }
    
    // subtotal * tipPercent = totalAmount
    var tipAmount: NSDecimalNumber {
        return subtotalAsDecimal.multiplying(by: tipPercent)
    }
    
    // subtotal + tipAmount = totalAmount
    var totalAmount: NSDecimalNumber {
        return subtotalAsDecimal.adding(tipAmount)
    }
    
    // MARK: - Convert to Currency
    let formatter = NumberFormatter()
    
    var subtotalAsCurrency: String {
        formatter.numberStyle = .currency
        return formatter.string(from: subtotalAsDecimal as NSNumber)!
    }
    
    var tipAmountAsCurrency: String {
        formatter.numberStyle = .currency
        return formatter.string(from: tipAmount as NSNumber)!
    }
    
    var totalAmountAsCurrency: String {
        formatter.numberStyle = .currency
        return formatter.string(from: totalAmount as NSNumber)!
    }
    
}
