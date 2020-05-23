//
//  MockData.swift
//  KFC
//
//  Created by Kittinun Chobtham on 26/4/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import Foundation

var users: [User] = [User(name: "ประยุทธ ทองดี",
                          email: "prayut_c@gmail.com",
                          password: "1234")]
var menuItems: [MenuItem] = [MenuItem(name: "ไก่ไม่มีกระดูก",
                                      price: 33,
                                      imageName: "menu"),
                             MenuItem(name: "ไก่กรอบ",
                                      price: 79,
                                      imageName: "menu")]
var promotion: Promotion = Promotion(name: "ลด แลด แจก แถม",
                                     imageName: "promotion")
var shoppingCart: ShoppingCart = ShoppingCart()
