//
//  extensionSingUp.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 23/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit
import FirebaseAuth
extension UserRegisterViewController{
    
    func SingUp(){
        
        if passwordTextField.text != userPasswordConfirm.text {
            self.present(ErrorMessageView.createAlert(title: "Password Incorrect", message: "Please re-type password"), animated: true, completion: nil)
            
        }
        else{
            Auth.auth().createUser(withEmail: nameTextField.text!, password: passwordTextField.text!){ (user, error) in
                if error == nil {
                    self.present(self.animateTransition(controllerIdentifier: "loginViewController"), animated: false, completion: nil)
                }
                else{
                    
                    self.present(ErrorMessageView.createAlert(title: "Error", message: (error?.localizedDescription)!), animated: true, completion: nil)
                }
            }
        }
    }
}
