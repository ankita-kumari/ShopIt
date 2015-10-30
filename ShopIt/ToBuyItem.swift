//
//  ToBuyItem.swift
//  ShopIt
//
//  Created by Ankita Kumari on 13/10/15.
//  Copyright © 2015 com.test.ankita. All rights reserved.
//

import Foundation

import Realm // [1]

class ToBuyItem: RLMObject { // [2]
    dynamic var name = "" // [3]
    dynamic var finished = false
}