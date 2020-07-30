//
//  StoreDataRetriever.swift
//  ZipMenu
//
//  Created by Jason Jimenez on 7/29/20.
//  Copyright © 2020 Jason Jimenez. All rights reserved.
//

import Foundation

struct StoreData {
    var name: String
    var rating: Float
    
    init(name: String, rating: Float)
    {
        self.name = name
        self.rating = rating
    }
}
