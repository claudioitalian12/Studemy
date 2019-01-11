//
//  extensionCollectionViewTable.swift
//  IcloudTest
//
//  Created by claudio Cavalli on 26/12/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit


extension HomeProfile {
    
    func cellTable(collectionView: UICollectionView,indexPath: IndexPath, category : String, titleNews: String, imageName: String) -> collectionViewCellTableView{
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! collectionViewCellTableView
        
        setCellAppear(cell: cell, indexPath: indexPath)
        showMoreButton(cell: cell, indexPath: indexPath)
        setTableView(cell: cell, indexPath: indexPath)
        return cell
    }
    
    
    func setCellAppear(cell: collectionViewCellTableView, indexPath: IndexPath){
        cell.backgroundColor = UIColor.clear
        cell.layer.add(addAnimationInterface(time: Double(indexPath.row)/5, value: "nul", forKey: animationKey), forKey: nil)
        

    }
  
    func showMoreButton(cell: collectionViewCellTableView, indexPath: IndexPath){
        cell.showMore.setTitle("Show All", for: .normal)
          cell.showMore.frame = CGRect(x: cell.frame.size.width / 1.27, y: cell.frame.size.height / 12 , width: cell.frame.size.width / 5, height: cell.frame.size.height / 18)
        cell.showMore.titleLabel?.font = UIFont(name: "Kailasa", size: cell.showMore.frame.size.height / 1.6)
       
        cell.showMore.titleLabel?.font = cell.showMore.titleLabel?.font.bold()
        cell.showMore.addTarget(self, action: #selector(showAll), for: .touchUpInside)
        cell.showMore.backgroundColor = UIColor.clear
      
        
    }
    
    
    @objc func showAll(sender: UIButton!){
        sender.layer.add(animateButtonClick(value: "showAll", forKey: animationKey), forKey: "pop")
    }
    
    func setTableView(cell: collectionViewCellTableView, indexPath: IndexPath){
        
        cell.tableView.backgroundColor = UIColor.clear
        cell.tableView.frame = CGRect(x: 0, y: cell.frame.size.height / 6.6, width: cell.frame.size.width , height: cell.frame.size.height / 1.5)
        cell.tableView.delegate = self
        cell.tableView.dataSource = self
        cell.tableView.separatorColor = UIColor.white
        cell.tableView.separatorInset = .init()
        cell.tableView.tableFooterView = UIView()
        cell.tableView.isScrollEnabled = false
        cell.tableView.showsVerticalScrollIndicator = false
        cell.tableView.rowHeight = cell.tableView.frame.size.height / 3
        cell.tableView.reloadData()
    }
    
    
}




extension HomeProfile : UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Num: \(indexPath.row)")
        tableView.cellForRow(at: indexPath)?.layer.add(animateButtonClick(value: "tableview", forKey: animationKey), forKey: "pop")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        
        
            cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "MyCell")
        

        cell.backgroundColor = UIColor.clear
        cell.textLabel?.textColor = UIColor.white
        cell.textLabel?.text = "Math course"
        
        cell.textLabel!.font = cell.textLabel!.font.bold()
        cell.selectionStyle = .none
        cell.detailTextLabel?.text = "Claudio Cavalli"
        cell.detailTextLabel?.textColor = UIColor.white
        cell.imageView?.image = UIImage(named: "Logo")
         cell.layer.add(addAnimationInterface(time: Double(indexPath.row)/5, value: "nul", forKey: animationKey), forKey: nil)
        return cell
    }
    
}
