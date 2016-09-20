//
//  SettingsViewController.swift
//  TipCalculation
//
//  Created by Emma Malysz on 9/20/16.
//  Copyright © 2016 Emma Malysz. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultTipSettings:UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tip Calculator"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func defaultTipUpdate(_ sender: AnyObject) {
        let defaults = UserDefaults.standard
        defaults.set(defaultTipSettings.selectedSegmentIndex, forKey: "default_tip_percentage")
        defaults.synchronize()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
