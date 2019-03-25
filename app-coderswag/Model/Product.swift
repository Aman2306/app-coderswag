//
//  Product.swift
//  app-coderswag
//
//  Created by Aman Meena on 25/03/19.
//  Copyright © 2019 Aman Meena. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, image: String) {
        self.title = title
        self.price = price
        self.imageName = image
    }
}
