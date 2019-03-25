//
//  ProductsViewController.swift
//  app-coderswag
//
//  Created by Aman Meena on 25/03/19.
//  Copyright © 2019 Aman Meena. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController {

    // MARK: Properties
    /*************************************************/
    let cellID = "ProductsCell"
    private(set) public var products = [Product]()
    
    // MARK: Outlets
    /*************************************************/
    @IBOutlet weak var productsCollectionView: UICollectionView!
    
    // MARK: Custom Methods
    /*************************************************/
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ProductsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
//        if section == 1 {
//            return 3
//        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = productsCollectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as? ProductsCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        } else {
            return ProductsCell()
        }
    }
    
    
}
