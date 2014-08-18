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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onEditingChanged(sender: AnyObject) {
        var bill = evaluateBill(billField.text)
        
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var tip = calculateTip(bill, tipPercentage)
        
        var total = calculateTotal(bill, tip)
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

