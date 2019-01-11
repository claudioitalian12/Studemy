//
//  extensionOverrideSetVieDidLoad.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 21/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

extension UserRegisterViewController{
    
    
    override func setDifferentsElement() {
        
        setLogoHome()
        setNameTextField()
        setPasswordTextField()
        setPasswordConfirmTextField()
        setLoginButton()
        setOneboardButton()
        
    }
    
    
    override func setPasswordTextField() {
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password",attributes: [NSAttributedString.Key.foregroundColor: UIColor(white: 1, alpha: 0.5)])
        passwordTextField.returnKeyType = .continue
        passwordTextField.isSecureTextEntry = true
        passwordTextField.delegate = self
        passwordTextField.layer.add(addAnimationInterface(time: 1.1, value: "passwordTextField", forKey: animationKey), forKey: animationKey)
        
    }
    
    func setPasswordConfirmTextField(){
        userPasswordConfirm.attributedPlaceholder = NSAttributedString(string: "Repeat Password",attributes: [NSAttributedString.Key.foregroundColor: UIColor(white: 1, alpha: 0.5)])
        userPasswordConfirm.returnKeyType = .done
        userPasswordConfirm.isSecureTextEntry = true
        userPasswordConfirm.delegate = self
        userPasswordConfirm.layer.add(addAnimationInterface(time: 1.1, value: "userPasswordConfirm", forKey: animationKey), forKey: animationKey)
        
    }
    
    
    
    override func setLoginButton() {
        loginButton.setTitle("SignUp", for: .normal)
        loginButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        loginButton.layer.add(addAnimationInterface(time: 1.3, value: "loginButton", forKey: animationKey), forKey: animationKey)
        
        
    }
    
    
    override func setOneboardButton() {
        oneboardButton.layer.borderColor = UIColor.clear.cgColor
        oneboardButton.setImage(UIImage(named: "Register"), for: .normal)
        oneboardButton.addTarget(self, action: #selector(buttonActionRegist), for: .touchUpInside)
        oneboardButton.imageView?.contentMode = .scaleAspectFit
        oneboardButton.transform = CGAffineTransform(rotationAngle: CGFloat(45 * Double.pi))
        oneboardButton.layer.add(addAnimationInterface(time: 1.5, value: "oneboardButton", forKey: animationKey), forKey: animationKey)
    }
    

  
    
}
