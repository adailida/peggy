//
//  ContactDetailsViewController.swift
//  Peggy
//
//  Created by Alex D on 26/08/15.
//  Copyright © 2015 Alex D. All rights reserved.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    var contact: Contact
    
    init(contact: Contact) {
        self.contact = contact
        super.init(nibName: "ContactDetailsView", bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func done(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}