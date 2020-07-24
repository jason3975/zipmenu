//
//  ForgotPasswordViewController.swift
//  ZipMenu
//
//  Created by Jason Jimenez on 7/9/20.
//  Copyright © 2020 Jason Jimenez. All rights reserved.
//

import UIKit
import FirebaseAuth

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
        if let email = emailTextfield.text {
            Auth.auth().sendPasswordReset(withEmail: email) { error in
                if let e = error {
                    // TODO: Notify user of failed password reset
                    print(e)
                } else {
                    // TODO: Notify user password email sent
                    print("Password successfully reset")
                }
            }
        }
        

    }
    
}

