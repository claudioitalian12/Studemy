//
//  extensionCollectionViewCellTableView.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 26/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

class collectionViewCellTableView: UICollectionViewCell{
    
    var tableView     : UITableView! = {
        
        let myTableView = UITableView()
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        
        return myTableView
    }()
    
    var showMore    : UIButton!  = {
        let button = UIButton()
        button.titleLabel?.textColor = UIColor.clear
        button.setTitle("Show All", for: .normal)
        button.backgroundColor = UIColor.white
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
    }
    
    
    
    func addViews(){
        
        
        addSubview(tableView)
        addSubview(showMore)
        

    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    
    
}

