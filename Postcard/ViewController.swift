//
//  ViewController.swift
//  Postcard
//
//  Created by Ian Morrow on 10/13/14.
//  Copyright (c) 2014 Ian Morrow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // code will evaluate when the button is pressed.
        
        // make labels visible
        messageLabel.hidden = false
        nameLabel.hidden = false
        
        // change labels text to enter text field text
        messageLabel.text = enterMessageTextField.text
        nameLabel.text = enterNameTextField.text
        
        // change color of labels
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor()
        
        // clear text fields
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        
        // hide keyboard
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        
        // change mail button after successful send
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }


}

