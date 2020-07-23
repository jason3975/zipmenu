//
//  MainTabBarController.swift
//  ZipMenu
//
//  Created by Jason Jimenez on 7/23/20.
//  Copyright © 2020 Jason Jimenez. All rights reserved.
//

import Foundation
import UIKit
class MainTabBarController: UITabBarController {
    
    @IBOutlet weak var mainTabBar: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainTabBar?.tintColor = UIColor.white
        tabBarItem.title = ""

        setTabBarItems()
        
    }
    func setTabBarItems()
    {
        let myTabBarItem1 = (self.tabBar.items?[0])! as UITabBarItem
        myTabBarItem1.image = UIImage(named: "Unselected")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        myTabBarItem1.selectedImage = UIImage(named: "Selected ")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        myTabBarItem1.title = ""
        myTabBarItem1.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
    }
}
