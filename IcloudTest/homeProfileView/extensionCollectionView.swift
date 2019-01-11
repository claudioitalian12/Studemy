//
//  extensionCollectionView.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 24/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

extension HomeProfile: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        if(collectionView == self.collectionViewTableView){
            return 4
        }
        else{
            return 8}
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        if(collectionView == self.collectionViewTableView){
            return cellTable(collectionView: collectionView, indexPath: indexPath, category: "never", titleNews: "asd", imageName: "")}
        else {
            return cellTitle(collectionView: collectionView, indexPath: indexPath, category: "Story", titleNews: "New Update", imageName: "Logo")
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        if(collectionView == self.collectionViewTableView){
             return CGSize(width: collectionView.frame.width / 1.04, height: collectionView.frame.height)
        }
        else {
            return CGSize(width: collectionView.frame.width / 3, height: collectionView.frame.height)}
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
        
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if(collectionView == self.collectionView){
        selectedCell = collectionView.cellForItem(at: indexPath) as! CollectionViewCell
        
        let pokemonDetailViewController = storyboard!.instantiateViewController(withIdentifier: "detailCollection") as! detailCollection
        pokemonDetailViewController.titleNews = "aaa"
        pokemonDetailViewController.detailNews = "bb"
        print("selected")
        pokemonDetailViewController.transitioningDelegate = self
        present(pokemonDetailViewController, animated: true, completion: nil)
        }
        
    }
    // Called before the cell is displayed
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if(collectionView == collectionViewTableView){
        switch indexPath.row {
        case 0:
            titleTabelView.text = "Lates Update"
        case 1:
            titleTabelView.text = "More Members"
        case 2:
            titleTabelView.text = "In English"
        case 3:
            titleTabelView.text = "Recommended"
        default:
            break
            }}
    }
    
    
    // Called when the cell is displayed
    func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if(collectionView == collectionViewTableView){
            print(indexPath.row)
            switch indexPath.row {
            case 0:
                titleTabelView.text = "More Members"
  
            case 3:
                titleTabelView.text = "In English"
          
            default:
                break
            }}
    }
}
