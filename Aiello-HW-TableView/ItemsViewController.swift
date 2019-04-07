//
//  ItemsViewController.swift
//  Aiello-HW-TableView
//
//  Created by Tony Aiello on 4/6/19.
//  Copyright © 2019 Tony Aiello. All rights reserved.
//



import UIKit

class ItemsViewController: UITableViewController {
    
    
    var itemStore: ItemStore!
    
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return itemStore.allItems.count
        
    }
    
   
    
}
