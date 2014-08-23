//
//  tipsHelpersTests.swift
//  tips
//
//  Created by Jesse Smith on 8/17/14.
//  Copyright (c) 2014 Jesse Smith. All rights reserved.
//

import XCTest

class tipsHelpersTests: XCTestCase {
    
    func testEvaluateBill() {
        let billAmount = evaluateBill("1.00")
        XCTAssertEqual(billAmount, 1.00, "incorrectly evaluated bill amount")
    }
    
    func testStripFirstChar() {
        let testString = "$123"
        let result = stripFirstChar(testString)
        XCTAssertEqual(result, "123", "String did not have first char stripped")
    }

    func testCalculateTip() {
        let tip = calculateTip(1.00, 0.2)
        XCTAssertEqual(tip, 0.20, "incorrect total amount")
    }

    func testCalculateTotal() {
        let total = calculateTotal(1.00, 0.2)
        XCTAssertEqual(total, 1.20, "incorrect total amount")
    }
}
