//
//  errorMessage.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 23/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

struct ErrorMessageView {
    
    static func createAlert(title: String, message: String) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction.init(title: "Close", style: UIAlertAction.Style.cancel, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        return alert
    }
}
