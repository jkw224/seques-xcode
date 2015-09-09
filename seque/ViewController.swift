//
//  ViewController.swift
//  seque
//
//  Created by Jonathan Wood on 9/8/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var goToRedBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func loadRed(sender: AnyObject) {
        // Use SENDER to pass data
        let str = "Text from Blue Screen!"
        performSegueWithIdentifier("goToRed", sender: str)
    }
    
    override func   prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // This is where you do work right before the view loads
        // Keep in mind -- the next ViewController has already been initialized
        if segue.identifier == "goToRed" {
            if let redVC = segue.destinationViewController as? RedViewController {
                if let redString = sender as? String {
                    redVC.transferRedText = redString
                }
            }
        }
    }
    
    
}

