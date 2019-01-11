//
//  extensionOverrideAnimation.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 21/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

extension UserRegisterViewController{
    
    override func rotateDegrees(duration: CFTimeInterval,value: String, forKey: String) -> CABasicAnimation {
    let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
    rotateAnimation.fromValue = Double.pi
    rotateAnimation.toValue = CGFloat(Double.pi * 2)
    rotateAnimation.isRemovedOnCompletion = false
    rotateAnimation.duration = duration
    rotateAnimation.delegate = self
    rotateAnimation.setValue("transform.rotation", forKey: animationKey)
    return rotateAnimation
   }
    
    override func animateTransition(controllerIdentifier: String) -> UIViewController {
        let transition = CATransition()
        transition.duration = 0.27
        transition.type = CATransitionType.reveal
        transition.subtype = CATransitionSubtype.fromTop
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        let presentedVC = self.storyboard!.instantiateViewController(withIdentifier: controllerIdentifier)
        
        return presentedVC
    }
    
    
  
}
