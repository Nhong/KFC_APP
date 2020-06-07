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
        let isContain = menuItems.contains{ $0.id == item.id }
        
        if isContain {
            menuItems = menuItems.map({ (oldItem) -> MenuItem in
                if oldItem.id == item.id {
                    oldItem.quantity = oldItem.quantity + 1
                    
                    return oldItem
                }
                
                return oldItem
            })
            
            return
        }
        
        menuItems.append(item)
    }
    
}
