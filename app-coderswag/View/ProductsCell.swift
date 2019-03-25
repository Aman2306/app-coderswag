//
//  ProductsCell.swift
//  app-coderswag
//
//  Created by Aman Meena on 25/03/19.
//  Copyright © 2019 Aman Meena. All rights reserved.
//

import UIKit

class ProductsCell: UICollectionViewCell {
    
    // MARK: Properties
    /*************************************************/
    
    // MARK: Outlets
    /*************************************************/
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
