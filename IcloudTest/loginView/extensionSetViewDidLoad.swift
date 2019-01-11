//
//  ExtensionSetViewDidLoad.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 20/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

extension LoginController{
    
@objc  func setDifferentsElement(){
        
        setLogoHome()
        setNameTextField()
        setPasswordTextField()
        setLoginButton()
        setOneboardButton()
        
    }
    
    func setLogoHome(){
        logoHome.image = UIImage(named: "Logo")
        logoHome.contentMode = .scaleAspectFit
        logoHome.layer.add(addAnimationInterface(time: 0.6, value: "image", forKey: animationKey), forKey: nil)
    }
    
    func setNameTextField(){
        nameTextField.attributedPlaceholder = NSAttributedString(string: "Email Address", attributes: [NSAttributedString.Key.foregroundColor: UIColor(white: 1, alpha: 0.5)])
        nameTextField.returnKeyType = .continue
        nameTextField.delegate = self
        nameTextField.layer.add(addAnimationInterface(time: 0.8, value: "nameTextField", forKey: animationKey), forKey: animationKey)
    }
    
  @objc  func setPasswordTextField(){
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password",attributes: [NSAttributedString.Key.foregroundColor: UIColor(white: 1, alpha: 0.5)])
        passwordTextField.returnKeyType = .done
    passwordTextField.delegate = self
        passwordTextField.isSecureTextEntry = true
    passwordTextField.layer.add(addAnimationInterface(time: 1.1, value: "passwordTextField", forKey: animationKey), forKey: animationKey)
        
    }
    
  @objc  func setLoginButton(){
        loginButton.setTitle("Login", for: .normal)
        loginButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    loginButton.layer.add(addAnimationInterface(time: 1.3, value: "loginButton", forKey: animationKey), forKey: animationKey)
     
        
    }
    
  @objc  func setOneboardButton(){
        oneboardButton.layer.borderColor = UIColor.clear.cgColor
        oneboardButton.setImage(UIImage(named: "Register"), for: .normal)
        oneboardButton.addTarget(self, action: #selector(buttonActionRegist), for: .touchUpInside)
        oneboardButton.imageView?.contentMode = .scaleAspectFit
    oneboardButton.layer.add(addAnimationInterface(time: 1.5, value: "oneboardButton", forKey: animationKey), forKey: animationKey)
    }
    
    @objc func buttonAction(sender: UIButton!){
       nameTextField.resignFirstResponder()
       passwordTextField.resignFirstResponder()
       loginButton.layer.add(animateButtonClick(value: "click", forKey: animationKey), forKey: "pop")
    }
    
    @objc func buttonActionRegist(sender: UIButton!){
        oneboardButton.layer.add(rotateDegrees(duration: 0.32, value: "transform.rotation", forKey: animationKey),forKey: animationKey)
        
    }
    
}
