//
//  extensionElementInCell.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 25/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit


extension HomeProfile {
    
    func cellTitle(collectionView: UICollectionView,indexPath: IndexPath, category : String, titleNews: String, imageName: String) -> CollectionViewCell{
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CollectionViewCell
       
        setCellAppear(cell: cell, indexPath: indexPath)
        setCategory(cell: cell, category: category)
        setTitleNews(cell: cell, titleNews: titleNews)
        setImageNamed(cell: cell, imageName: imageName)
        
        return cell
    }
    
    
    func setCellAppear(cell: CollectionViewCell, indexPath: IndexPath){
        cell.backgroundColor = UIColor.clear
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.white.cgColor
        cell.layer.cornerRadius = 5
        cell.layer.add(addAnimationInterface(time: Double(indexPath.row)/5, value: "nul", forKey: animationKey), forKey: nil)
      
    }
    
    func setCategory(cell : CollectionViewCell, category: String){
 
        cell.category.font = UIFont(name: "Kailasa", size: cell.frame.size.height / 10)
        
        cell.category.font = cell.category.font.bold()
        cell.category.text = category
        
    }
    
    func setTitleNews(cell : CollectionViewCell, titleNews: String){
      
        
           cell.titleNews.font = UIFont(name: "Kailasa", size: cell.frame.size.height / 20)
        
        cell.titleNews.text = titleNews
   
    }
    
    func setImageNamed(cell : CollectionViewCell, imageName: String){

        cell.imageNamed.image = UIImage(named: imageName)
     
    }

    
}
