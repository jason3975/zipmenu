//
//  StoreDataRetriever.swift
//  ZipMenu
//
//  Created by Jason Jimenez on 7/29/20.
//  Copyright © 2020 Jason Jimenez. All rights reserved.
//

import Foundation

public struct StoreData {
    
    var name: String
    var description: String
    var rating: Double
    var id: String
    
    init (name: String, description: String, rating: Double, id: String)
    {
        self.name = name
        self.description = description
        self.rating = rating
        self.id = id
    }
}
