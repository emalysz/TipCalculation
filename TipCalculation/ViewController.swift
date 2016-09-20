//
//  ViewController.swift
//  TipCalculation
//
//  Created by Emma Malysz on 9/20/16.
//  Copyright © 2016 Emma Malysz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let tipVal = defaults.integer(forKey: "default_tip_percentage")
        tipControl.selectedSegmentIndex = tipVal
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ ßsender: AnyObject) {
        
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }

}

