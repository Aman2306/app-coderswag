//
//  CategoryCell.swift
//  app-coderswag
//
//  Created by Aman Meena on 24/03/19.
//  Copyright © 2019 Aman Meena. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    // MARK: Outlets
    /*****************************************************************/
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}
