//
//  ContactDetailsViewController.swift
//  Peggy
//
//  Created by Alex D on 26/08/15.
//  Copyright © 2015 Alex D. All rights reserved.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    var contact: Contact?
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = contact?.name
    }
    
}