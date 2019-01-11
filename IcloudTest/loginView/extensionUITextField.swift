//
//  extensionUITextField.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 20/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

extension LoginController: UITextFieldDelegate{
    
  
 @objc func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            
            
            if textField == nameTextField {
                
                passwordTextField.becomeFirstResponder()
            } else {
                passwordTextField.resignFirstResponder()
                
            }
            return true
            
        }
    
    
    
    // Start Editing The Text Field
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if(textField.layer.position.y > screenSize.maxY / 1.9){
            moveTextField(textField, moveDistance: -100, up: true)
            
        }
    }
    
    // Finish Editing The Text Field
    func textFieldDidEndEditing(_ textField: UITextField) {
        if(textField.layer.position.y > screenSize.maxY / 1.9){
            moveTextField(textField, moveDistance: -100, up: false)
               
        }
    }
    
    
    
    // Move the text field in a pretty animation!
    func moveTextField(_ textField: UITextField, moveDistance: Int, up: Bool) {
        let moveDuration = 0.3
        let movement: CGFloat = CGFloat(up ? moveDistance : -moveDistance)
        
        UIView.beginAnimations("animateTextField", context: nil)
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(moveDuration)
        self.view.frame = self.view.frame.offsetBy(dx: 0, dy: movement)
        UIView.commitAnimations()
    }
    
}

