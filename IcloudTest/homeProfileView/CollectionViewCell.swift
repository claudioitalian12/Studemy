//
//  CollectionViewCell.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 24/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var category : UILabel  = {
        let label = UILabel()
        label.textColor = UIColor.white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var titleNews    : UILabel  = {
        let label = UILabel()
        label.textColor = UIColor.white
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var imageNamed    : UIImageView = {
        let imageView = UIImageView()
      
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
    }

    
    
    func addViews(){
    
        
        addSubview(category)
        addSubview(titleNews)
        addSubview(imageNamed)
       
  
        category.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
        category.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
   
        titleNews.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
        titleNews.topAnchor.constraint(equalTo: category.topAnchor, constant: 25).isActive = true
        
   
      
          imageNamed.topAnchor.constraint(equalTo: titleNews.topAnchor, constant: 20).isActive = true

        imageNamed.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        imageNamed.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
         imageNamed.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 5).isActive = true
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}


extension CollectionViewCell{
    
   
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?){
        UIView.animate(withDuration: 0.1, animations: {
            self.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        }){(true) in
            UIView.animate(withDuration: 0.1, animations: {
                self.transform = CGAffineTransform(scaleX: 1, y: 1)
            })
        }
    }

}
