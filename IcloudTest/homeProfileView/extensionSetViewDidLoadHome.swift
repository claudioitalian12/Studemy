//
//  extensionSetViewDidLoadHome.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 23/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

extension HomeProfile{
    
    func setDifferentsElement() {
        shadow()
        setLogoHome()
        exitButton()
        insertionButton()
        setLabel()
        announcementButton()
        chatButton()
        quizButton()
        
       
       
    }
    
    func shadow(){
        applyShadowOnView(separatorNavBar)
        applyShadowOnView(separator)
    }
    
    func setLogoHome(){
        logoHome.image = UIImage(named: "Logo")
        logoHome.contentMode = .scaleAspectFit
   
    }
    
    func setLabel(){
        titleTabelView.text = "Latest update:"
        titleTabelView.font = UIFont(name: "Kailasa", size: titleTabelView.frame.size.height / 2)
   titleTabelView.font =  titleTabelView.font.bold()
        
    }
    
    
    func exitButton(){
        exit.setImage(UIImage(named: "Exit"), for: .normal)
        exit.layer.borderWidth = 0
        exit.imageView?.contentMode = .scaleAspectFit
        exit.isUserInteractionEnabled = true
        exit.addTarget(self, action: #selector(logOutAction), for: .touchUpInside)
    }
    
    func insertionButton(){
        insertion.setImage(UIImage(named: "Insertion"), for: .normal)
        insertion.layer.borderWidth = 0
        insertion.imageView?.contentMode = .scaleAspectFit
        insertion.isUserInteractionEnabled = true
        insertion.addTarget(self, action: #selector(buttonInsertionAction), for: .touchUpInside)
        
        
    }

   
    func announcementButton(){
        announcement.setImage(UIImage(named: "Announcement"), for: .normal)
        announcement.layer.borderWidth = 0
        announcement.imageView?.contentMode = .scaleAspectFit
        announcement.addTarget(self, action: #selector(buttonAnnouncementAction), for: .touchUpInside)
        
        fadeRotate(button: announcement, duration: 0.8)
        
        
        
    }
    
    func chatButton(){
        
        chat.setImage(UIImage(named: "Chat"), for: .normal)
        chat.layer.borderWidth = 0
        chat.imageView?.contentMode = .scaleAspectFit
        chat.addTarget(self, action: #selector(buttonChatAction), for: .touchUpInside)
        
        fadeRotate(button: chat, duration: 0.8)
    }
    
    func quizButton(){
        quiz.setImage(UIImage(named: "Quiz"), for: .normal)
        quiz.layer.borderWidth = 0
        quiz.imageView?.contentMode = .scaleAspectFit
        quiz.addTarget(self, action: #selector(buttonQuizAction), for: .touchUpInside)
        fadeRotate(button: quiz, duration: 0.8)
    }
    
 
    @objc func buttonAnnouncementAction(sender: UIButton!){
        sender.layer.add(animateButtonClick(value: "home", forKey: animationKey), forKey: "pop")
    }
    
    @objc func buttonChatAction(sender: UIButton!){
        sender.layer.add(animateButtonClick(value: "chat", forKey: animationKey), forKey: "pop")
    }
    
    @objc func buttonQuizAction(sender: UIButton!){
        sender.layer.add(animateButtonClick(value: "quiz", forKey: animationKey), forKey: "pop")
    }
    
    @objc func buttonInsertionAction(sender: UIButton!){
        sender.layer.add(animateButtonClick(value: "insertion", forKey: animationKey), forKey: "pop")
    }
}
