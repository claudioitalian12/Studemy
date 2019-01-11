//
//  homeProfile.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 22/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

class HomeProfile: HelperViewController{
    
   var logoHome                     = UIImageView()
   var separator                    = UIView()
   var separatorNavBar              = UIView()
  
   var announcement                 = UIButton()
   var chat                         = UIButton()
   var quiz                         = UIButton()
   var insertion                    = UIButton()
   var exit                         = UIButton()
   var titleTabelView               = UILabel()
 
   var collectionView               : UICollectionView!
   var collectionViewTableView      : UICollectionView!
    
   let transition                   = TransitionAnimator()
   var selectedCell                 = UICollectionViewCell()

   
    override func viewDidLoad() {
        transition.dismissCompletion = {
            self.selectedCell.isHidden = false
            return
        }
        setGradientInitial()
        setElementInitial()
        setCollectionView()
        setCollectionViewTableView()
    }
    
}
