//
//  StoreTableViewCell.swift
//  ZipMenu
//
//  Created by Jason Jimenez on 7/26/20.
//  Copyright © 2020 Jason Jimenez. All rights reserved.
//

import UIKit

class StoreTableViewCell: UITableViewCell {

    @IBOutlet weak var storeImageView: UIImageView!
    @IBOutlet weak var storeNameLabel: UILabel!
    @IBOutlet weak var storeRatingLabel: UILabel!
    @IBOutlet weak var storeDescLabel: UILabel!
    func setStore(store: StoreData)
    {
        storeNameLabel.text = store.name
        storeRatingLabel.text = "\(store.rating)"
        storeDescLabel.text = store.description
        storeImageView.image = #imageLiteral(resourceName: "Seafood Connection")
        storeImageView.layer.cornerRadius = 30
        
        
    }
}
