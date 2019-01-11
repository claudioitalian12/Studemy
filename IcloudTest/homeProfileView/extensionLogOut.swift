//
//  extensionLogOut.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 24/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit
import FirebaseAuth

extension HomeProfile{
    
@objc func logOutAction(_ sender: Any) {
    do {
        try Auth.auth().signOut()
    }
    catch let signOutError as NSError {
        print ("Error signing out: %@", signOutError)
    }
    
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let initial = storyboard.instantiateInitialViewController()
    UIApplication.shared.keyWindow?.rootViewController = initial
}
    
}
