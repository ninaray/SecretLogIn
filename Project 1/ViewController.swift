//
//  ViewController.swift
//  Project 1
//
//  Created by Nina Ray on 9/27/15.
//  Copyright © 2015 Nina Ray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelMessage: UILabel!
    
    @IBOutlet weak var labelUsernameField: UITextField!
    
    @IBOutlet weak var labelPasswordField: UITextField!
    
    @IBOutlet weak var switchMessage: UISwitch!
    
    @IBOutlet weak var labellogIN: UILabel!
    
    var logIN: [String] = ["blank1", "blank2"]
    
    @IBOutlet weak var imageDOG: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func whenTapped(sender: UITapGestureRecognizer) {
        labelUsernameField.resignFirstResponder()
        labelPasswordField.resignFirstResponder()
    }
    
    @IBAction func revealMessage(sender: UIButton) {
        if switchMessage.on == true {
            
            if labelUsernameField.text == "username" {
                if labelPasswordField.text == "password" {
                    labelMessage.text = "CONGRATULATIONS! You unlocked the secret message!!"
                    labelMessage.textColor = UIColor.blackColor()
                    labelMessage.backgroundColor = UIColor.whiteColor()
                    labelMessage.alpha = 0.8
                    labelMessage.font = UIFont (name: "Didot", size: 17)
                    imageDOG.hidden = false
                    logIN[0] = "username"
                    logIN[1] = "password"
                    }
                else {
                    labelMessage.text = "Incorrect password."
                    labelMessage.textColor = UIColor.redColor()
                    labelMessage.font = UIFont (name: "Helvetica Neue", size: 17)
                    imageDOG.hidden = true
                    labelMessage.backgroundColor = UIColor.clearColor()
                    }
                }
            else {
                labelMessage.text = "Incorrect username or password."
                labelMessage.textColor = UIColor.redColor()
                labelMessage.font = UIFont (name: "Helvetica Neue", size: 17)
                imageDOG.hidden = true
                labelMessage.backgroundColor = UIColor.clearColor()
                }
            }
        else if switchMessage.on == false {
            labelMessage.text = "It looks like your switch is turned off. Tap anywhere to remove the keyboard and turn the switch on."
            labelMessage.textColor = UIColor .blackColor()
            labelMessage.font = UIFont (name: "Didot", size: 17)
            imageDOG.hidden = true
            labelMessage.backgroundColor = UIColor.clearColor()
            }
        }
    } //final ending bracket
    




