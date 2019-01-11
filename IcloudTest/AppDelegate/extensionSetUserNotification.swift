//
//  extensionSetUserNotification.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 22/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit
import UserNotifications

extension AppDelegate{
    
    func request(application: UIApplication){
        // set self (AppDelegate) to handle notification
        UNUserNotificationCenter.current().delegate = self
        
        // Request permission from user to send notification
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: { authorized, error in
            if authorized {
                DispatchQueue.main.async(execute: {
                    application.registerForRemoteNotifications()
                })
            }
        })
    }
    
}
