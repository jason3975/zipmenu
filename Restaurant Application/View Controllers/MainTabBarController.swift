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
        
        mainTabBar?.barTintColor = UIColor.white
        tabBarItem.title = ""

        setTabBarItems()
        
    }
    func setTabBarItems()
    {
        let tabBarItem1 = (self.tabBar.items?[0])! as UITabBarItem
        tabBarItem1.image = #imageLiteral(resourceName: "HomeIcon-1")
        tabBarItem1.title = ""
        
        let tabBarItem2 = (self.tabBar.items?[1])! as UITabBarItem
        tabBarItem2.image = #imageLiteral(resourceName: "OrderButton")
        tabBarItem2.title = ""
        
        let tabBarItem3 = (self.tabBar.items?[2])! as UITabBarItem
        tabBarItem3.image = #imageLiteral(resourceName: "ProfileIcon")
        tabBarItem3.title = ""
    }
}
