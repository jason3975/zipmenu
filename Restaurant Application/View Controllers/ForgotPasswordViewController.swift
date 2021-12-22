//
//  ForgotPasswordViewController.swift
//  ZipMenu
//
//  Created by Jason Jimenez on 7/9/20.
//  Copyright © 2020 Jason Jimenez. All rights reserved.
//

import UIKit
//import FirebaseAuth

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func closeView(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func sendResetPressed(_ sender: Any) {
        

    }
    
}

