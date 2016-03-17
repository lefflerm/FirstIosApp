//
//  ViewController.swift
//  FirstIosApp
//
//  Created by student on 3/15/16.
//  Copyright © 2016 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    
    
    @IBOutlet weak var tipPercentTextField: UITextField!
    
    
    @IBOutlet weak var monsterImageView: UIImageView!
    
    
    @IBOutlet weak var tipLabel: UILabel!
    
    
    var calculatedTip = ""
    
    
    var monsters = ["Astro", "Fluffy", "Munchie", "Squido"]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jokes = Jokes()
        for joke in jokes.jokes{
            print(joke)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeMonster(sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        monsterImageView.image = UIImage(named: monsters[index])
    }


    @IBAction func calculateTip(sender: UIButton) {
        var tip = 0.0
        var dAmount = 0.0
        var dPercent = 0.0
        
        if let amount = amountTextField.text, percent = tipPercentTextField.text {
            dAmount = Double(amount)!
            dPercent = Double(percent)!
            tip = dAmount * dPercent
            
        }
        
        tipLabel.text = "Tip is $\(String(tip))"
        calculatedTip =  "Tip is $\(String(tip))"
        
        performSegueWithIdentifier("GoToNewView", sender: nil)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GoToNewView" {
            let newViewController = segue.destinationViewController as? NewViewController
            newViewController?.tipToShow = calculatedTip
            
        }
    }



}

