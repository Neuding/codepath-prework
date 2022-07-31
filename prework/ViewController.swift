//
//  ViewController.swift
//  prework
//
//  Created by CYH on 7/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var TipAmountLabel: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentatges = [0.15,0.18,0.2]
        let tip = bill*tipPercentatges[TipControl.selectedSegmentIndex]
        let total = bill+tip
        TipAmountLabel.text=String(format:"$%.2f",tip)
        totalLabel.text=String(format:"$%.2f",total)
            
    }
    
}

