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
    @IBOutlet weak var storeRating: UILabel!
    @IBOutlet weak var storeName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
