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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        loginTextFild.text = nil
        passwordTextField.text = nil
       }
    
    @IBAction func registrationAction(_ sender: Any) {
        if let login = loginTextFild.text, let password = passwordTextField.text  {
            Auth.auth().createUser(withEmail: login, password: password) { authResult, error in
                
                if let error = error {
                    print(error.localizedDescription)
                }
                
                //                let login = authResult?.user.email
                //                print(login)
                //
                //            }
                
                if authResult != nil {
                    self.performSegue(withIdentifier: "showVC", sender: nil )
                }
                
                
            }
            loginTextFild.text = nil
            passwordTextField.text = nil
            
        }
    }
    
    @IBAction func signInAction(_ sender: Any) {
        if let login = loginTextFild.text, let password = passwordTextField.text  {
        Auth.auth().signIn(withEmail: login, password: password) { [weak self] authResult, error in
            
            if let error = error {
                print(error.localizedDescription)
            }
            
            
            if authResult != nil {
                self?.performSegue(withIdentifier: "showVC", sender: nil )
            }
        }
    }
}
}

