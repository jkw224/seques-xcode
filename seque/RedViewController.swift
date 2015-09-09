//
//  RedViewController.swift
//  seque
//
//  Created by Jonathan Wood on 9/8/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    
    // ---- Properties -------
    private var _transferRedText = ""
    
    // ---- Accessors/Mutators ----
    var transferRedText: String {
        get {
            return _transferRedText
        }
        set {
            if newValue != "" {
                _transferRedText = newValue
            }
        }
    }
    
    // ---- Outlets -----------
    @IBOutlet weak var mainLblRed: UILabel!
    @IBOutlet weak var goToYellowBtn: UIButton!
    
    // ---- Actions -----------
    @IBAction func loadYellow(sender: AnyObject) {
        let str: String = "Text from Red Screen!"
        performSegueWithIdentifier("goToYellow", sender: str)
    }
    
    
    
    // ---- Orig Functions ----
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        mainLblRed.text = _transferRedText
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // ---- Functions ---------
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToYellow" {
            if let yellowVC = segue.destinationViewController as? YellowViewController {
                if let yellowString = sender as? String {
                    yellowVC.transferYellowText = yellowString
                }
            }
        }
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
