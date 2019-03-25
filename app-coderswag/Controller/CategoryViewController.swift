//
//  ViewController.swift
//  app-coderswag
//
//  Created by Aman Meena on 24/03/19.
//  Copyright © 2019 Aman Meena. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

    // MARK: Outlets
    /******************************************************************/
    @IBOutlet weak var categoryTableView: UITableView!
    
    // MARK: Properties
    /******************************************************************/
    let cellID = "CategoryCellID"
    let segueID = "ProductsVC"
    
    
    /******************************************************************/
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsViewController {
            let barButton = UIBarButtonItem()
            barButton.title = ""
            navigationItem.backBarButtonItem = barButton
            assert(sender as? Category != nil) // just a layer of protection during development phase, could have used guard or if let but my app requires it to be an category and nothing else
            productsVC.initProducts(category: sender as! Category)
            
            
        }
    }
}

extension CategoryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = categoryTableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! CategoryCell
       
        cell.updateViews(category: DataService.instance.getCategories()[indexPath.row])
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: segueID, sender: category)
    }
}
