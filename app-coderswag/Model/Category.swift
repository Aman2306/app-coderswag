//
//  Category.swift
//  app-coderswag
//
//  Created by Aman Meena on 24/03/19.
//  Copyright © 2019 Aman Meena. All rights reserved.
//

import Foundation

struct Category {
    // data cannot be set from other classes
    private(set) var title: String
    private(set) var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
