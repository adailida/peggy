//
//  SecondViewController.swift
//  Peggy
//
//  Created by Alex D on 22/08/15.
//  Copyright (c) 2015 Alex D. All rights reserved.
//

import UIKit

class ContactsViewController: HideNavBarViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var contactsTableView: UITableView!
    
    private let dateFormatter = NSDateFormatter()
    
    private var datasource: [Contact] = [
    ]

    override func viewDidLoad() {
        self.dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
        self.contactsTableView.dataSource = self
        self.contactsTableView.delegate = self
        super.viewDidLoad()
        
        self.datasource = ContactsWizard.getImportantContacts()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ContactCell")!
        let contact = self.datasource[indexPath.row]
        let date = contact.dob != nil ? self.dateFormatter.stringFromDate(contact.dob!) : ""
        cell.textLabel?.text = "\(contact.name) \(contact.surname) \(date)"
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ContactDetailsSegue" {
            if let detailsController = segue.destinationViewController as? ContactDetailsViewController,
            let indexPath = self.contactsTableView.indexPathForSelectedRow {
                detailsController.contact = self.datasource[indexPath.row]
            }
        }
    }
    

}

