//
//  ViewController.swift
//  tips
//
//  Created by Jesse Smith on 8/17/14.
//  Copyright (c) 2014 Jesse Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let tipPercentages = [0.18, 0.2, 0.22]
                            
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var defaultTip = NSUserDefaults.standardUserDefaults().integerForKey("defaulttipindex")
        tipControl.selectedSegmentIndex = defaultTip
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var billString = billField.text
        
        if billString.hasPrefix("$") {
            billString = stripFirstChar(billString)
        }
        var bill = evaluateBill(billString)
        
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var tip = calculateTip(bill, tipPercentage)
        
        var total = calculateTotal(bill, tip)
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        billField.text = "$\(billString)"
    }

    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

