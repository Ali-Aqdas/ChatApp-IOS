//
//  ViewController.swift
//  ChatApp
//
//  Created by MacBook on 14/01/2020.
//  Copyright © 2020 MacBook. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signUp(_ sender: Any) {
        let email = emailTextField.text!
        let password = passwordTextField.text!
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            if error == nil {
                print("success")
            }else {
                print(error?.localizedDescription)
            }
        }
    }
    

}

