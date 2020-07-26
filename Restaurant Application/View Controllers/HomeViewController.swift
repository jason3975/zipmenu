//
//  HomeViewController.swift
//  ZipMenu
//
//  Created by Jason Jimenez on 7/24/20.
//  Copyright © 2020 Jason Jimenez. All rights reserved.
//

import Foundation
import UIKit
class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        addLeftImage()
    }
    
    func addLeftImage()
    {
        let img = #imageLiteral(resourceName: "SearchIcon")
        let leftImageView = UIImageView(frame: CGRect(x: 0.0, y:0.0, width: img.size.width, height: img.size.height))
        leftImageView.image = #imageLiteral(resourceName: "SearchIcon")
        searchTextField.leftView = leftImageView
        searchTextField.leftViewMode = .always
    }
}
