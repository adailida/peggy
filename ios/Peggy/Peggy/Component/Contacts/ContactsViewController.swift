//
//  SecondViewController.swift
//  Peggy
//
//  Created by Alex D on 22/08/15.
//  Copyright (c) 2015 Alex D. All rights reserved.
//

import UIKit

class ContactsViewController: UITableViewController {
    
    private let dateFormatter = NSDateFormatter()
    
    private var datasource = [
        Contact(name: "Alex", surname: "D", dob: NSDate.parse("1900-01-01")),
        Contact(name: "Alisher", surname: "S", dob: NSDate.parse("1900-01-01"))
    ]

    override func viewDidLoad() {
        self.dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ContactCell")!
        let contact = self.datasource[indexPath.row]
        let date = contact.dob != nil ? self.dateFormatter.stringFromDate(contact.dob!) : ""
        cell.textLabel?.text = "\(contact.name) \(contact.surname) \(date)"
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }


}

