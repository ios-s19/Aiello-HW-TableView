//
//  ItemStore.swift
//  Aiello-HW-TableView
//
//  Created by Tony Aiello on 4/6/19.
//  Copyright © 2019 Tony Aiello. All rights reserved.
//

import UIKit

class ItemStore {
    
    var allItems = [Item]()
    
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
        
    }
    
    init() {
        for _ in 0..<5 {
            createItem()
        }
        
        
    }
}
