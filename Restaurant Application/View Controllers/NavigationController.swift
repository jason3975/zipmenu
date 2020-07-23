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
            switch CLLocationManager.authorizationStatus() {
                case .notDetermined, .restricted, .denied:
                    performSegue(withIdentifier: "LocationPopup", sender: self)
                case .authorizedAlways, .authorizedWhenInUse:
                    print("Hey")
                @unknown default:
                break
            }
            } else {
                print("Else")
                //performSegue(withIdentifier: "LocationPopup", sender: self)
        }
        
        
    }
}
