//
//  SingUpViewController.swift
//  Flickr App
//
//  Created by AKIN on 10.10.2022.
//

import UIKit
import Firebase
import FirebaseAuth

class SingUpViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        if emailTextField.text?.isEmpty == true {
            print("No text in email field")
            return
        }
        
        if passwordTextField.text?.isEmpty == true {
            print("No text in password field")
            return
        }
        
        signUp()
    }
    
    private func signUp() {
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (authResult, error) in
            guard let user = authResult?.user, error == nil else {
                print("Error \(error?.localizedDescription)")
                return
            }
            let recentVC = MainTabBarViewController()
            recentVC.modalPresentationStyle = .fullScreen
            self.present(recentVC, animated: true)
        }
    }
}
