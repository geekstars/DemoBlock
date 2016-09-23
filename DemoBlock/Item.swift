//
//  Item.swift
//  DemoBlock
//
//  Created by Hoàng Minh Thành on 9/23/16.
//  Copyright © 2016 Hoàng Minh Thành. All rights reserved.
//

import UIKit

class Item: NSObject {
    var anh: String?
    var ten: String?
    var vitri: String?
    init(anh:String,ten:String,vitri:String) {
        self.anh = anh
        self.ten = ten
        self.vitri = vitri
    }
}
