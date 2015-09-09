//
//  YellowViewController.swift
//  seque
//
//  Created by Jonathan Wood on 9/8/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {
    
    // ---- Properties --------
    private var _transferYellowText = ""
    
    // ---- Accessors/Mutator ----
    var transferYellowText: String {
        get {
            return _transferYellowText
        }
        set {
            if newValue != "" {
                _transferYellowText = newValue
            }
        }
    }
    
    // ---- Outlets -----------
    @IBOutlet weak var mainLblYellow: UILabel!
    @IBOutlet weak var backToRedBtn: UIButton!
    
    
    // ---- Actions ------------
//    @IBAction func backToRed(sender: AnyObject) {
//        
//    }
    
    // ---- Orig Functions ----
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        mainLblYellow.text = _transferYellowText
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // ---- Functions ----------

    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
