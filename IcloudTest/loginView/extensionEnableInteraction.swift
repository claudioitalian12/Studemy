//
//  extensionEnableInteraction.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 22/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

extension LoginController{
    
    @objc func setEnableInteraction(){
    
         nameTextField.isUserInteractionEnabled         = true
         passwordTextField.isUserInteractionEnabled     = true
         loginButton.isUserInteractionEnabled           = true
         oneboardButton.isUserInteractionEnabled        = true
    }
    
    
}
