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
    
    @IBOutlet weak var storeViewContainer: UIView!
    
    override func viewDidLoad() {
        addLeftImage()
        storeViewContainer.clipsToBounds = true
        storeViewContainer.layer.cornerRadius = 30
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
