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
        // This is an example of a functional test case.
        let billAmount = evaluateBill("1.00")
        XCTAssertEqual(billAmount, 1.00, "incorrectly evaluated bill amount")
    }

    func testCalculateTip() {
        // This is an example of a functional test case.
        let tip = calculateTip(1.00, 0.2)
        XCTAssertEqual(tip, 0.20, "incorrect total amount")
    }

    func testCalculateTotal() {
        // This is an example of a functional test case.
        let total = calculateTotal(1.00, 0.2)
        XCTAssertEqual(total, 1.20, "incorrect total amount")
    }
}
