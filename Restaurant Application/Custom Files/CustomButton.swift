//
//  CustomButton.swift
//  Restaurant Application
//
//  Created by Jason Jimenez on 7/6/20.
//  Copyright © 2020 Jason Jimenez. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        setUpButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpButton()
    }
    
    
    func setUpButton() {
        //setShadow()
        setTitleColor(.white, for: .normal)
        backgroundColor = #colorLiteral(red: 0.1193573102, green: 0.547753036, blue: 0.8086502552, alpha: 1)
        titleLabel?.font = UIFont(name: "Montserrat-Regular", size: 18)
        layer.cornerRadius = 18
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.clear.cgColor
    }
    
    
    private func setShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 6.0)
        layer.shadowRadius = 8
        layer.shadowOpacity = 0.5
        clipsToBounds = true
        layer.masksToBounds = false
    }
    func shake() {
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 2
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: center.x - 8, y: center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x + 8, y: center.y)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        layer.add(shake, forKey: "position")
    }
}
