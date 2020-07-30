//
//  StoreTableViewCell.swift
//  ZipMenu
//
//  Created by Jason Jimenez on 7/26/20.
//  Copyright © 2020 Jason Jimenez. All rights reserved.
//

import UIKit

class StoreTableViewCell: UITableViewCell {

    @IBOutlet weak var storeImage: UIStackView!
    @IBOutlet weak var storeNameLabel: UILabel!
    @IBOutlet weak var storeRatingLabel: UILabel!
    
    func setStore(store: StoreData)
    {
        storeNameLabel.text = store.name
        storeRatingLabel.text = "\(store.rating)"
        
    }
}
