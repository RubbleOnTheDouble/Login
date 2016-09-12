//
//  RegisterPageViewController.swift
//  ColleenLogin
//
//  Created by Colleen Prescod on 2016-09-11.
//  Copyright © 2016 Colleen Prescod. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButtonTapped(sender: AnyObject) {
        
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        let userConfirmPassword = confirmPasswordTextField.text;
        
  
        // Create a function for displayMyAlertMessage box
        func displayMyAlertMessage(userMessage: String)
        {
            var myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.Alert);
            
            let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil);
            
            myAlert.addAction(okAction);
            
            self.presentViewController(myAlert, animated: true, completion: nil);
        }
        
        
        // Check if passwords match
        if(userPassword != userConfirmPassword)
        {
            // Display an alert message
            displayMyAlertMessage("Passwords do not match");
            
            return;
        }
        
        // To Store data for login and passwords
        NSUserDefaults.standardUserDefaults().setObject(userEmail, forKey: "userEmail");
        NSUserDefaults.standardUserDefaults().setObject(userPassword, forKey: "userPassword");
        NSUserDefaults.standardUserDefaults().synchronize();
        
    
        // Display alert message with confirmation
        var myAlert = UIAlertController(title: "Alert", message: "Yippe!!! Registration was successful", preferredStyle: UIAlertControllerStyle.Alert);
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default){action in self.dismissViewControllerAnimated(true, completion: nil);
    }
        
        myAlert.addAction(okAction);
        self.presentViewController(myAlert, animated: true, completion: nil);


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


    }}