//
//  HideNavBarViewController.swift
//  Peggy
//
//  Created by Alex D on 29/08/15.
//  Copyright © 2015 Alex D. All rights reserved.
//

import UIKit

class HideNavBarViewController: UIViewController {
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}
