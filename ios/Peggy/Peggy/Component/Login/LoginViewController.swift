//
//  LoginViewController.swift
//  Peggy
//
//  Created by Alex D on 23/08/15.
//  Copyright (c) 2015 Alex D. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    init() {
        super.init(nibName: "LoginView", bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // read_custom_friendlists
        
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