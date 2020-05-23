//
//  Cart.swift
//  KFC
//
//  Created by Kittinun Chobtham on 23/5/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import Foundation

class ShoppingCart {
    
    var menuItems: [MenuItem] = []
    
    func addToShoppingCart(item: MenuItem) {
        menuItems.append(item)
    }
    
}
