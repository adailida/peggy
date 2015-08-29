//
//  GiftIdeasViewController.swift
//  Peggy
//
//  Created by Alex D on 26/08/15.
//  Copyright © 2015 Alex D. All rights reserved.
//

import UIKit

class GiftIdeasViewController: HideNavBarViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var giftIdeasCollectionView: UICollectionView!
    
    private var datasource: [GiftIdea] = [
        GiftIdea(name: "idea1"),
        GiftIdea(name: "idea2")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return datasource.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("GiftIdeaCell", forIndexPath: indexPath) as! GiftIdeaCell
        let idea = self.datasource[indexPath.row]
        cell.idea = idea
        return cell
    }
    
}