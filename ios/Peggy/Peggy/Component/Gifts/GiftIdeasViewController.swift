//
//  GiftIdeasViewController.swift
//  Peggy
//
//  Created by Alex D on 26/08/15.
//  Copyright © 2015 Alex D. All rights reserved.
//

import UIKit
import CHTCollectionViewWaterfallLayout

class GiftIdeasViewController: HideNavBarViewController, UICollectionViewDataSource, CHTCollectionViewDelegateWaterfallLayout {
    
    @IBOutlet weak var giftIdeasCollectionView: UICollectionView!
    
    private var datasource: [GiftIdea] = [
        GiftIdea(name: "idea1"),
        GiftIdea(name: "idea2"),
        GiftIdea(name: "idea3"),
        GiftIdea(name: "idea4"),
        GiftIdea(name: "idea5"),
        GiftIdea(name: "idea6"),
        GiftIdea(name: "idea7"),
        GiftIdea(name: "idea8"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = CHTCollectionViewWaterfallLayout()
        layout.columnCount = 2
        self.giftIdeasCollectionView.setCollectionViewLayout(layout, animated: true)
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
    
    func collectionView(collectionView: UICollectionView!, layout collectionViewLayout: UICollectionViewLayout!, sizeForItemAtIndexPath indexPath: NSIndexPath!) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
    
}