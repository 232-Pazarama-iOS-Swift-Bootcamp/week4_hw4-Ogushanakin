//
//  AuthViewController.swift
//  Flickr App
//
//  Created by AKIN on 10.10.2022.
//

import UIKit
import FirebaseAuth
import Firebase

class AuthViewController: UIViewController {
    

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func singUpButton(_ sender: Any) {
        let detailViewController = SingUpViewController()
        detailViewController.modalTransitionStyle = .coverVertical
        present(detailViewController, animated: true)
    }
    @IBAction func signInButton(_ sender: Any) {
        validateFields()
    }
    
    private func validateFields() {
        if emailTextField.text?.isEmpty == true {
            print("No Email Text")
            return
        }
        if passwordTextField.text?.isEmpty == true {
            print("No Password")
            return
        }
        login()
    }
    
    private func login() {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { [weak self] authResult, err in
            guard self != nil else { return }
            if let err = err {
                print(err.localizedDescription)
            }
            self!.chectUserInfo()
        }
    }
    
    private func chectUserInfo () {
        if Auth.auth().currentUser != nil {
            print(Auth.auth().currentUser?.uid as Any)
            let detailViewController = MainTabBarViewController()
            detailViewController.modalPresentationStyle = .fullScreen
            present(detailViewController, animated: true)
        }
    }

}
