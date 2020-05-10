//
//  MenuItem.swift
//  KFC
//
//  Created by Kittinun Chobtham on 10/5/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import Foundation

class MenuItem {
    var name: String
    var price: Int
    var imageName: String
    
    init(name: String,
         price: Int,
         imageName: String) {
        self.name = name
        self.price = price
        self.imageName = imageName
    }
    
}
