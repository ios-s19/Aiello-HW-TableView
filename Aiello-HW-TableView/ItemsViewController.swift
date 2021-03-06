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
    
    override func tableView(_ tableView: UITableView,
    cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    // Create an instance of UITableViewCell, with default appearance
    
   // let cell = UITableViewCell(style: .value1, reuseIdentifier: "UITableViewCell")
    
        
    // get a new or recycled cell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell",
                    for: indexPath)
        
    // Set the text on the cell
    
    let item = itemStore.allItems[indexPath.row]
        
    cell.textLabel?.text = item.name
    
    return cell
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get height of status bar
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets

    }
    
}
