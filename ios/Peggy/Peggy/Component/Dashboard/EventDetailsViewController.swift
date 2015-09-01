//
//  EventDetailsViewController.swift
//  Peggy
//
//  Created by Alex D on 29/08/15.
//  Copyright © 2015 Alex D. All rights reserved.
//

import UIKit
import CHTCollectionViewWaterfallLayout

class EventDetailsViewController: UIViewController, UICollectionViewDataSource, CHTCollectionViewDelegateWaterfallLayout  {
    
    @IBOutlet weak var eventNameLabel: UILabel!
    
    @IBOutlet weak var giftIdeasCollectionView: UICollectionView!
    
    var event: Event?
    
    private var giftIdeasDatasource = [
        GiftIdea(name: "gift1"),
        GiftIdea(name: "gift2"),
        GiftIdea(name: "gift3")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.eventNameLabel.text = self.event?.description
        self.giftIdeasCollectionView.dataSource = self
        self.giftIdeasCollectionView.delegate = self
        self.giftIdeasCollectionView.registerNib(UINib(nibName: Constants.CellIdentifiers.GiftIdeaCell, bundle: nil), forCellWithReuseIdentifier: Constants.CellIdentifiers.GiftIdeaCell)
        let layout = CHTCollectionViewWaterfallLayout()
        layout.columnCount = 2
        self.giftIdeasCollectionView.setCollectionViewLayout(layout, animated: true)
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.giftIdeasDatasource.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Constants.CellIdentifiers.GiftIdeaCell, forIndexPath: indexPath) as! GiftIdeaCell
        let idea = self.giftIdeasDatasource[indexPath.row]
        cell.idea = idea
        return cell
    }
    
    func collectionView(collectionView: UICollectionView!, layout collectionViewLayout: UICollectionViewLayout!, sizeForItemAtIndexPath indexPath: NSIndexPath!) -> CGSize {
        return CGSize(width: 80, height: 100)
    }

}
