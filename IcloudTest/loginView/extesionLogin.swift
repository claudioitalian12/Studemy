//
//  extesionLogin.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 23/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit
import FirebaseAuth


extension LoginController{
    func Login(){
Auth.auth().signIn(withEmail: nameTextField.text!, password: passwordTextField.text!) { (user, error) in
    if error == nil{
            self.present(self.animateTransition(controllerIdentifier: "homeProfile"), animated: false, completion: nil)
    }
    else{
       
        self.present(ErrorMessageView.createAlert(title: "Error", message: (error?.localizedDescription)!), animated: true, completion: nil)
    }
}
    }
}


