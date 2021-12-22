//
//  ProfileViewController.swift
//  ZipMenu
//
//  Created by Jason Jimenez on 8/3/20.
//  Copyright © 2020 Jason Jimenez. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var orangeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        orangeView.clipsToBounds = true
        orangeView.layer.cornerRadius = 30
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.layer.shadowColor = UIColor.white.cgColor
    }
    
    @IBAction func buttonTouchedDown(_ sender: UIButton) {
        print("pressed")
        sender.layer.shadowColor = UIColor.white.cgColor
    }
    @IBAction func buttonNotPressed(_ sender: UIButton) {
        sender.layer.shadowColor = UIColor.gray.cgColor
    }
}
