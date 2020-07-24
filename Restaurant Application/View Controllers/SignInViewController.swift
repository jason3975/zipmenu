//
//  SignInViewController.swift
//  Restaurant Application
//
//  Created by Jason Jimenez on 7/5/20.
//  Copyright © 2020 Jason Jimenez. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation
import FirebaseAuth

class SignInViewController: UIViewController {
    
    
    //SIGNIN STACK VIEWS
    @IBOutlet private var signInButton: CustomButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var signUpLine: UIView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginLine: UIView!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    //SIGNUP PAGE STACK VIEWS
    @IBOutlet weak var NameStack: UIStackView!
    @IBOutlet weak var LastNameStack: UIStackView!
    @IBOutlet weak var confirmStack: UIStackView!
    
    //SIGNIN/UP TEXTFIELDS
    @IBOutlet weak var firstNameTextfield: UITextField!
    @IBOutlet weak var lastNameTextfield: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var confirmPasswordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround() 
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        
        if (signUpLine.alpha != 1)//if alpha is 1 button is already pressed
        {
            signUpButton.titleLabel?.font = UIFont(name: "Montserrat-SemiBold", size: 20)
            signUpButton.setTitleColor(#colorLiteral(red: 0.1193573102, green: 0.547753036, blue: 0.8086502552, alpha: 1), for: .normal)
            signUpLine.alpha = 1
            
            loginButton.titleLabel?.font = UIFont(name: "Montserrat-Regular", size: 20)
            loginButton.setTitleColor(UIColor.black, for: .normal)
            loginLine.alpha = 0
            
            UIView.animate(withDuration: 0.1, animations: {
                //self.logoConstraint.constant = 40
                //self.textEntryConstraint.constant = 40
                //self.navBarConstraint.constant = 30
                self.forgotPasswordButton.isHidden = true
                self.LastNameStack.isHidden = false
                self.NameStack.isHidden = false
                self.confirmStack.isHidden = false
                self.signInButton.setTitle("Sign Up", for: .normal)
            }, completion:  nil)
        }
        
    }
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        if (loginLine.alpha != 1)//if alpha is 1 button is already pressed
        {
            loginButton.titleLabel?.font = UIFont(name: "Montserrat-SemiBold", size: 20)
            loginButton.setTitleColor(#colorLiteral(red: 0.1193573102, green: 0.547753036, blue: 0.8086502552, alpha: 1), for: .normal)
            loginLine.alpha = 1
            
            signUpButton.titleLabel?.font = UIFont(name: "Montserrat-Regular", size: 20)
            signUpButton.setTitleColor(UIColor.black, for: .normal)
            signUpLine.alpha = 0
            
            UIView.animate(withDuration: 0.1, animations: {
                //self.logoConstraint.constant = 80
                //self.navBarConstraint.constant = 60
                //self.textEntryConstraint.constant = 60
                self.forgotPasswordButton.isHidden = false
                self.LastNameStack.isHidden = true
                self.NameStack.isHidden = true
                self.confirmStack.isHidden = true
                self.signInButton.setTitle("Sign In", for: .normal)
                
            }, completion:  nil)
        }
    }
    
    @IBAction func signInButtonPressed(_ sender: CustomButton) {
        
        switch signInButton.currentTitle {
        case "Sign In":
            if let email = emailTextfield.text, let password = passwordTextfield.text {
                Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                    if let e = error {
                        // TODO: Let user know there was a sign in error
                        self.signInButton.shake()
                        AlertPopup.showBasicAlert(on: self, with: "Sign In Error", message: e.localizedDescription)
                        print(e)
                    } else {
                        self.navigateToMainView()
                    }
                }
            }
        case "Sign Up":
            if let email = emailTextfield.text,
                let password = passwordTextfield.text,
                let firstName = firstNameTextfield.text,
                let lastName = lastNameTextfield.text,
                let confirmPass = confirmPasswordTextfield.text {
                if confirmPass == password {
                    Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                        if let e = error {
                            // TODO: Notify user account creation failed
                            self.signInButton.shake()
                            AlertPopup.showBasicAlert(on: self, with: "Sign Up Error", message: e.localizedDescription)
                            print(e)
                        } else {
                            // Account creation succeeded
                            // TODO: Implement user accounts stored using
                            // a struct in Firestore to contain first/last/phone
                            self.navigateToMainView()
                            print("Account created successfully")
                        }
                    }
                }
            }
        default:
            print("This shouldn't have happened")
        }
        
    }
    
    func navigateToMainView()
    {
        let storyboard = UIStoryboard(name: "LoginViews", bundle: nil)
        let mainTabBarController = storyboard.instantiateViewController(identifier: "MainTabBarController")
        // This is to get the SceneDelegate object from your view controller
        // then call the change root view controller function to change to main tab bar
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(mainTabBarController)
    }
}



