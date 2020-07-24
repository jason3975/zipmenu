//
//  AlertPopup.swift
//  ZipMenu
//
//  Created by Jason Jimenez on 7/24/20.
//  Copyright © 2020 Jason Jimenez. All rights reserved.
//

import Foundation
import UIKit

struct AlertPopup {
    
    static func showBasicAlert (on vc: UIViewController, with title: String, message: String )
    {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        vc.present(alert, animated: true)
    }
}
