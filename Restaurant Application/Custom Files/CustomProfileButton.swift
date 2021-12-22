//
//  CustomProfileButton.swift
//  ZipMenu
//
//  Created by Jason Jimenez on 8/4/20.
//  Copyright © 2020 Jason Jimenez. All rights reserved.
//

import UIKit

class CustomProfileButton: UIButton
{
    override func layoutSubviews() {
        
        super.layoutSubviews()
        layer.cornerRadius = 20
        setShadow()
        /*
        if imageView != nil {
            titleEdgeInsets = UIEdgeInsets(top: 85, left: -35, bottom: 0, right: 25)
            imageEdgeInsets = UIEdgeInsets(top: 25, left: 35, bottom: 45, right: 35)
        }
         */
    }
    
    func setShadow() {
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 6.0)
        layer.shadowRadius = 8
        layer.shadowOpacity = 0.5
        clipsToBounds = true
        layer.masksToBounds = false
    }
}
