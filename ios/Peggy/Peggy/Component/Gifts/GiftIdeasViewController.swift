//
//  GiftIdeasViewController.swift
//  Peggy
//
//  Created by Alex D on 26/08/15.
//  Copyright © 2015 Alex D. All rights reserved.
//

import UIKit

class GiftIdeasViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var giftIdeasTableView: UITableView!
    
    private var datasource: [GiftIdea] = [
        GiftIdea(name: "idea1"),
        GiftIdea(name: "idea2")
    ]
    
    override func viewDidLoad() {
        self.giftIdeasTableView.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("GiftIdeaCell")!
        let idea = self.datasource[indexPath.row]
        cell.textLabel?.text = idea.name
        return cell
    }

}