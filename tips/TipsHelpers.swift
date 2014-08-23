//
//  TipHelpers.swift
//  tips
//
//  Created by Jesse Smith on 8/17/14.
//  Copyright (c) 2014 Jesse Smith. All rights reserved.
//

import Foundation


public func evaluateBill(billAmount: String) -> Double {
    //Funky hack b/c swift does not support converting string to double
    var amount = billAmount
    
    return (amount as NSString).doubleValue
}

public func stripFirstChar(str: String) -> String {
    return str.substringWithRange(Range<String.Index>(start: str.startIndex.successor(), end: str.endIndex))
}

public func calculateTip(bill: Double, tipPercentage: Double) -> Double {
    return bill * tipPercentage
}

public func calculateTotal(bill: Double, tip: Double) -> Double {
    return bill + tip
}
