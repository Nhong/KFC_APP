//
//  MenuItem.swift
//  KFC
//
//  Created by Kittinun Chobtham on 10/5/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import Foundation

class MenuItem {
    var id: Int
    var name: String
    var price: Int
    var imageName: String
    var quantity: Int = 0
    
    init(id: Int,
        name: String,
        price: Int,
        imageName: String) {
        self.id = id
        self.name = name
        self.price = price
        self.imageName = imageName
    }
    
}
