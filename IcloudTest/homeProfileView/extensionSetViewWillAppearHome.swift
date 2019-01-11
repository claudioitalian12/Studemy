//
//  extensionSetViewWillAppearHome.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 23/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

extension HomeProfile{
    
    override func viewWillAppear(_ animated: Bool) {
      
         setDifferentsElement()
        
    }
    
     func setElementInitial() {
        
        setElementInView(view: view, object: logoHome, screenSize: screenSize, perCentX: 4, perCentY: 35, perCentWidth: 2, perCentHeight: 14)
        
        
        setElementInView(view: view, object: separatorNavBar, screenSize: screenSize, perCentX: screenSize.width, perCentY: 10 , perCentWidth: 1, perCentHeight: 4)
        
          setElementInView(view: view, object: exit, screenSize: screenSize, perCentX: 15, perCentY: 18, perCentWidth: 10, perCentHeight: 30)
        
        setElementInView(view: view, object: insertion, screenSize: screenSize, perCentX: 1.20, perCentY: 18, perCentWidth: 10, perCentHeight: 30)
        
//          setElementInView(view: view, object: collectionView, screenSize: screenSize, perCentX: 4.01, perCentY: 30, perCentWidth: 2, perCentHeight: 18)
    
        setElementInView(view: view, object: titleTabelView, screenSize: screenSize, perCentX: 45, perCentY: 2.65, perCentWidth: 2, perCentHeight: 18)
      
        setElementInView(view: view, object: separator, screenSize: screenSize, perCentX: screenSize.width, perCentY: 1.1, perCentWidth: 1, perCentHeight: 4)
        
        
        setElementInView(view: view, object: announcement, screenSize: screenSize, perCentX: 15, perCentY: 1.08, perCentWidth: 10, perCentHeight: 30)
       
       
        setElementInView(view: view, object: chat, screenSize: screenSize, perCentX: 2.22, perCentY: 1.08, perCentWidth: 10, perCentHeight: 30)
       
        
        setElementInView(view: view, object: quiz, screenSize: screenSize, perCentX: 1.20, perCentY: 1.08, perCentWidth: 10, perCentHeight: 30)
   
       
    }
    
    
    
    func setCollectionView(){
       
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        collectionView = UICollectionView(frame: rectcollection(), collectionViewLayout: flowLayout)
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "collectionCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor.clear
        collectionView.showsHorizontalScrollIndicator = false
        self.view.addSubview(collectionView)
       
    
        
        
    }
    
    
    func rectcollection()-> CGRect{
        let  b = setSize(screenSize: screenSize, perCentWidth: 1, perCentHeight: 5)
        let c = setPosition(screenSize: screenSize, perCentX: screenSize.width, perCentY: 7.0)
        return CGRect(origin: c, size: b)
    }
    
    
    
    func setCollectionViewTableView(){
          
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        
     
       
        collectionViewTableView = UICollectionView(frame: rectcollectiontableview(), collectionViewLayout: flowLayout)
        collectionViewTableView.register(collectionViewCellTableView.self, forCellWithReuseIdentifier: "collectionCell")
        collectionViewTableView.delegate = self
        collectionViewTableView.dataSource = self
        collectionViewTableView.backgroundColor = UIColor.clear
        collectionViewTableView.showsHorizontalScrollIndicator = false
        collectionViewTableView.isPagingEnabled = true
        
        self.view.addSubview(collectionViewTableView)
    
        flowLayout.minimumLineSpacing = collectionViewTableView.frame.size.width / 25
    }
    
    func rectcollectiontableview()-> CGRect{
        let  b = setSize(screenSize: screenSize, perCentWidth: 1, perCentHeight: 2.0)
       
        let c = setPosition(screenSize: screenSize, perCentX: screenSize.width , perCentY: 2.5)
        
        return CGRect(origin: c, size: b)
    }
    
}
