//
//  ViewController.swift
//  tippy
//
//  Created by Bryant Tran on 1/8/20.
//  Copyright © 2020 Bryant Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Hides the keyboard when taping anywhere else on the screen
    @IBAction func onTap(_ sender: Any)
    {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any)
    {
        //Get bill amount
        let bill = Double(billField.text!) ?? 0
        
        //Calcuate tip
        let tipPercentages = [0.1, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        //Calculate total
        let total = bill + tip
        
        //Update tip label
        tipLabel.text = String(format: "$%.2f", tip)
        
        //Update total label
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

