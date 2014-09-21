//
//  ViewController.swift
//  Postcard
//
//  Created by Roei Kessler on 17/09/14.
//  Copyright (c) 2014 D-Alloc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var messageLable: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterAMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var nameLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton)
        {
        // Code will evaluate when we press the button
            // Testing Update            
            messageLable.hidden = false
            messageLable.text = enterAMessageTextField.text
            enterAMessageTextField.text = ""
            enterAMessageTextField.resignFirstResponder()
            messageLable.textColor = UIColor.redColor()
            mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
            nameLabel.hidden = false
            nameLabel.text = ("Sent To: "+enterNameTextField.text)
            nameLabel.textColor = UIColor.blueColor()
            enterNameTextField.text = ""
            
    }

}

