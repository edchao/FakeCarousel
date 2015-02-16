//
//  signinViewController.swift
//  FakeCarousel
//
//  Created by Ed Chao on 2/10/15.
//  Copyright (c) 2015 edchao. All rights reserved.
//

import UIKit

class signinViewController: UIViewController {

    // General Vars
    
    
    
    @IBOutlet weak var inputEmail: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    @IBOutlet weak var createText: UIImageView!
    @IBOutlet weak var loginImageView: UIImageView!
    
    @IBOutlet weak var signInImage: UIImageView!
    @IBOutlet weak var signinHitArea: UIButton!
    
    @IBOutlet weak var loadingPromptView: UIView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var loadingLabel: UILabel!
    
    @IBOutlet weak var overlayView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.loadingPromptView.layer.cornerRadius = 5
        
        self.inputEmail.frame = CGRect(x: 24, y: 173, width: 272, height: 30)
        self.inputPassword.frame = CGRect(x: 24, y: 217, width: 272, height: 30)
        self.createText.frame = CGRect(x: 0, y: 81, width: 320, height: 63)
        self.createText.alpha = 1
        self.loginImageView.frame = CGRect(x: 0, y: 152, width: 320, height: 113)
        self.signInImage.frame = CGRect(x: 0, y: 464, width: 320, height: 104)
        self.signinHitArea.frame = CGRect(x: 16, y: 475, width: 288, height: 50)

        self.loadingPromptView.alpha = 0
        self.overlayView.alpha = 0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func didBeginEditingEmail(sender: AnyObject) {

        UIView.animateWithDuration(0.4, animations: {
            self.createText.alpha = 0
            self.createText.frame = CGRect(x: 0, y: 10, width: 320, height: 63)
           
            self.inputEmail.frame = CGRect(x: 24, y: 93, width: 272, height: 30)
            self.inputPassword.frame = CGRect(x: 24, y: 137, width: 272, height: 30)
           
            self.loginImageView.frame = CGRect(x: 0, y: 72, width: 320, height: 113)
            
            self.signInImage.frame = CGRect(x: 0, y: 190, width: 320, height: 104)
            self.signinHitArea.frame = CGRect(x: 16, y: 200, width: 288, height: 50)

        })

        
    }
    
    

    @IBAction func didPressSignin(sender: AnyObject) {

        view.endEditing(true)
        
        UIView.animateWithDuration(0.4, animations: {
            self.createText.alpha = 1

            self.inputEmail.frame = CGRect(x: 24, y: 173, width: 272, height: 30)
            self.inputPassword.frame = CGRect(x: 24, y: 217, width: 272, height: 30)
            self.createText.frame = CGRect(x: 0, y: 81, width: 320, height: 63)
            self.loginImageView.frame = CGRect(x: 0, y: 152, width: 320, height: 113)
            self.signInImage.frame = CGRect(x: 0, y: 464, width: 320, height: 104)
            self.signinHitArea.frame = CGRect(x: 16, y: 475, width: 288, height: 50)
            
        })
        
        
        if inputEmail.text == ""{
            var validationView = UIAlertView(title: "Email Required", message: "You must provide an email", delegate: nil, cancelButtonTitle: "Cancel", otherButtonTitles: "Okay")
            validationView.show()
        }
            
        else if inputPassword.text == "" {
            var validationView = UIAlertView(title: "Password Required", message: "You must provide a password", delegate: nil, cancelButtonTitle: "Cancel", otherButtonTitles: "Okay")
            validationView.show()
        }
        
        else if inputEmail.text == "bob" && inputPassword.text == "bob" {
           
            loadingPromptView.alpha = 1
            overlayView.alpha = 0.5
            
            self.activityIndicator.startAnimating()
            delay(2, {() -> () in
                self.activityIndicator.stopAnimating()
                self.performSegueWithIdentifier("toWelcome", sender: self)

            })
        }
            
        else{
            var alertView = UIAlertView(title: "Nope", message: "Sorry that is not a valid login", delegate: nil, cancelButtonTitle: "Cancel", otherButtonTitles: "Okay")
            alertView.show()
        }
        
        
        
            
            

    }
    
    @IBAction func didPressBackButton(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }


}
