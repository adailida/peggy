//
//  GiftIdeaCell.swift
//  Peggy
//
//  Created by Alex D on 29/08/15.
//  Copyright © 2015 Alex D. All rights reserved.
//

import UIKit

class GiftIdeaCell: UICollectionViewCell {
    
    var idea: GiftIdea? {
        didSet {
            self.name.text = self.idea?.name
        }
    }

    @IBOutlet weak var name: UILabel!
}
