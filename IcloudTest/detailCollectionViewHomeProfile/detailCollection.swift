//
//  detailCollection.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 26/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

class detailCollection: HelperViewController{
    
    var titleNews: String = ""
    var detailNews: String = ""
    var imageNews: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(actionClose(_:))))
       setGradientInitial()
        print(titleNews)
        print(detailNews)
        
    }
    
    
    @objc func actionClose(_ tap: UITapGestureRecognizer) {
  
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
