//
//  extensionSetViewWillAppear.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 21/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

extension UserRegisterViewController{
    
    override func setElementInitial() {
        
        setElementInView(view: view, object: logoHome, screenSize: screenSize, perCentX: 8.8, perCentY: 10, perCentWidth: 1.3, perCentHeight: 4)
        
        setElementInView(view: view, object: nameTextField, screenSize: screenSize, perCentX: 8.8, perCentY: 2.5, perCentWidth: 1.3, perCentHeight: 20)
        
        setElementInView(view: view, object: passwordTextField, screenSize: screenSize, perCentX: 8.8, perCentY: 2.1, perCentWidth: 1.3, perCentHeight: 20)
        
        setElementInView(view: view, object: userPasswordConfirm, screenSize: screenSize, perCentX: 8.8, perCentY: 1.8, perCentWidth: 1.3, perCentHeight: 20)
        
        setElementInView(view: view, object: loginButton, screenSize: screenSize, perCentX: 6, perCentY: 1.5, perCentWidth: 1.5, perCentHeight: 20)
        
        setElementInView(view: view, object: oneboardButton, screenSize: screenSize, perCentX: 2.22, perCentY: 1.2, perCentWidth: 10, perCentHeight: 30)
        
        setDifferentsElement()
        
    }
    
}
