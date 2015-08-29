//
//  FirstViewController.swift
//  Peggy
//
//  Created by Alex D on 22/08/15.
//  Copyright (c) 2015 Alex D. All rights reserved.
//

import UIKit

class DashboardViewController: HideNavBarViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var datasource: [Event] = [
        Event(description: "Some event1"),
        Event(description: "Some event2")
    ]
    
    @IBOutlet weak var upcomingEventsTableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.upcomingEventsTableView.dataSource = self
        self.upcomingEventsTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "EventDetailsSegue" {
            if let detailsController = segue.destinationViewController as? EventDetailsViewController,
                let indexPath = self.upcomingEventsTableView.indexPathForSelectedRow {
                    detailsController.event = self.datasource[indexPath.row]
            }
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("EventCell")!
        let event = self.datasource[indexPath.row]
        cell.textLabel?.text = "\(event.description)"
        return cell
    }

}
