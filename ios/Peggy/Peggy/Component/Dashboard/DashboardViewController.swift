//
//  FirstViewController.swift
//  Peggy
//
//  Created by Alex D on 22/08/15.
//  Copyright (c) 2015 Alex D. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {
    
    @IBOutlet weak var upcomingEventsTableView: UITableView!
    
    private var upcomingEventsDatasource = UpcomingEventsDatasource()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.upcomingEventsTableView.dataSource = self.upcomingEventsDatasource
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

class UpcomingEventsDatasource: NSObject, UITableViewDataSource {
    
    private var datasource: [UpcomingEvent] = [
        UpcomingEvent(description: "Some event1"),
        UpcomingEvent(description: "Some event2")
    ]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("UpcomingEventCell")!
        let event = self.datasource[indexPath.row]
        cell.textLabel?.text = "\(event.description)"
        return cell
    }
}