//
//  ViewController.swift
//  Firebase
//
//  Created by Pavel Chekov on 13/04/2020.
//  Copyright © 2020 Pavel Chekov. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    
    @IBOutlet weak var passwordTextField: UITextField!
       
    
    @IBOutlet weak var loginTextFild: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //showVC
        
        
    }
    
    @IBAction func registrationAction(_ sender: Any) {
        if let login = loginTextFild.text, let password = passwordTextField.text  {
            Auth.auth().createUser(withEmail: login, password: password) { authResult, error in
                
                if let error = error {
                    print(error.localizedDescription)
                }
                
                let login = authResult?.user.email
                print(login)
                
            }
            
            
        }
    }
    
    @IBAction func signInAction(_ sender: Any) {
    }
}

