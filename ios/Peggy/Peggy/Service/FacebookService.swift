//
//  FacebookService.swift
//  Peggy
//
//  Created by Alex D on 01/09/15.
//  Copyright © 2015 Alex D. All rights reserved.
//

import Foundation
import FBSDKLoginKit
import FBSDKCoreKit

class FacebookService {
    
    static var loginResult: FBSDKLoginManagerLoginResult?
    
    static func importFriends() {
        FBSDKAccessToken.currentAccessToken()
    }
    
}