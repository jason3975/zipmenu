//
//  HomeViewController.swift
//  ZipMenu
//
//  Created by Jason Jimenez on 7/24/20.
//  Copyright © 2020 Jason Jimenez. All rights reserved.
//

import UIKit
class HomeViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var storeViewTable: UITableView!
    var stores: [StoreData] = []
    
    override func viewDidLoad() {
        addLeftImage()
        storeViewTable.clipsToBounds = true
        storeViewTable.layer.cornerRadius = 30
        storeViewTable.delegate = self
        storeViewTable.dataSource = self
        stores = createArray()
    }
    
    func createArray() -> [StoreData] {
        var tempStores: [StoreData] = []
        
        let store1 = StoreData(name: "Joes Crab Shack", rating: 4.1)
        let store2 = StoreData(name: "Osaka Japanese Steakhouse", rating: 4.5)
        let store3 = StoreData(name: "Garcias Mexican Food", rating: 4.1)
        tempStores.append(store1)
        tempStores.append(store2)
        tempStores.append(store3)
        
        return tempStores
    }
    
    func addLeftImage()
    {
        searchTextField.clipsToBounds = true
        let img = #imageLiteral(resourceName: "SearchIcon")
        let leftImageView = UIImageView(frame: CGRect(x: 10, y: 5, width: img.size.width, height: img.size.height))
        leftImageView.image = #imageLiteral(resourceName: "SearchIcon")
        
        let iconContainerView: UIView = UIView (frame: CGRect(x: 20, y: 0, width: img.size.width+15, height: img.size.height+10))
        iconContainerView.addSubview(leftImageView)
        
        searchTextField.leftView = iconContainerView
        searchTextField.leftViewMode = .always
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "StoreCell") as! StoreTableViewCell
        let store = stores[indexPath.row]
        cell.setStore(store: store)
        return cell

    }
}
