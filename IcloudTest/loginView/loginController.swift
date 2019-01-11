//
//  ViewController.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 20/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit
import FirebaseAuth
class LoginController: HelperViewController {

  
    
    var logoHome              = UIImageView()
    
    var nameTextField         = UITextField()
    var passwordTextField     = UITextField()
    
    var loginButton           = UIButton()
    var oneboardButton        = UIButton()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    }
    
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            self.present(self.animateTransition(controllerIdentifier: "homeProfile"), animated: false, completion: nil)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setGradientInitial()
        setElementInitial()
        setGestureResign()
    }
    
    
}










/*
 override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
 super.viewWillTransition(to: size, with: coordinator)
 if UIDevice.current.orientation.isLandscape {
 print("Landscape")
 self.view.subviews.forEach({ $0.removeFromSuperview() })
 
 screenSize = UIScreen.main.bounds
 
 setElementInitial()
 } else {
 print("Portrait")
 self.view.subviews.forEach({ $0.removeFromSuperview() })
 screenSize = UIScreen.main.bounds
 
 }
 }*/


