//
//  NavigationController.swift
//  ZipMenu
//
//  Created by Jason Jimenez on 7/22/20.
//  Copyright © 2020 Jason Jimenez. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation
class NavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if CLLocationManager.locationServicesEnabled() {
            //currently enabled
            }
            else {
                performSegue(withIdentifier: "LocationPopup", sender: self)
        }
        
    }
}
