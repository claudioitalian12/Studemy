//
//  extensionOverrideCoreAnimationDelegate.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 22/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit


extension UserRegisterViewController{
    
override func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        guard let aniName = anim.value(forKey: "animatedb")
            as? String else {return}
        
        switch aniName {
        case "transform.rotation":
            control(window: view.window, segueIdentifier: "loginViewController")
        case "oneboardButton":
            setEnableInteraction()
        case "click":
            SingUp()
        default:
            return
        }
    }
    
}
