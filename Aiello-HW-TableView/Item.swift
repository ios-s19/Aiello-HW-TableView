//
//  Item.swift
//  Aiello-HW-TableView
//
//  Created by Tony Aiello on 4/6/19.
//  Copyright © 2019 Tony Aiello. All rights reserved.
//





import UIKit



class Item: NSObject {
    
    var photo: String
    var name: String
    var serialNumber: String?
    
    init(photo: String, name: String, serialNumber: String?) {
        
        self.photo = photo
        self.name = name
        self.serialNumber = serialNumber
        super.init()
    }
    
    
        convenience init(random: Bool = false) {
            if random {
                let names = ["Buckingham Palace", "The Eiffel Tower", "The Grand Canyon", "Windsor Castle", "Empire State Buolding"]
                let photos = ["palace.jpg", "tower.jpg", "canyon.jpg", "castle.jpg", "building.jpg"]
                
                var idx = arc4random_uniform(UInt32(names.count))
                let randomName = names[Int(idx)]
                let matchingPhoto = photos[Int(idx)]
                
                let randomSerialNumber = UUID().uuidString.components(separatedBy: "-").first!
                
                self.init(photo: matchingPhoto, name: randomName, serialNumber: randomSerialNumber)
            } else {
                self.init(photo: "", name: "", serialNumber: nil)
                
            }
        }
        
    
    
}
