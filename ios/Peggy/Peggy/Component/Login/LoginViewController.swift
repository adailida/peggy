//
//  LoginViewController.swift
//  Peggy
//
//  Created by Alex D on 23/08/15.
//  Copyright (c) 2015 Alex D. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class LoginViewController: UIViewController, FBSDKLoginButtonDelegate {
    
    @IBOutlet weak var loginWithFBButton: FBSDKLoginButton!
    
    init() {
        super.init(nibName: "LoginView", bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // read_custom_friendlists
        
        self.loginWithFBButton.readPermissions = [
            "user_friends",
            "public_profile",
            "user_relationships",
            "read_custom_friendlists"
        ]
    }
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        FacebookService.loginResult = result
        FacebookService.importFriends()
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
    }

    @IBAction func loginWithFacebook(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: { () -> Void in
            
        })
    }
    
    @IBAction func loginWithoutSigningIn(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: { () -> Void in
            
        })
    }
}