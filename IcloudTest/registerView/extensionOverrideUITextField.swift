//
//  extensionOverrideUITextField.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 21/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit


extension UserRegisterViewController{
    
override func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    
    if textField == nameTextField {
        
        passwordTextField.becomeFirstResponder()
    }
    else if textField == passwordTextField{
        userPasswordConfirm.becomeFirstResponder()
        
    }
    else{
        userPasswordConfirm.resignFirstResponder()
    }
    return true
}
}
