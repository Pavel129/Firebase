//
//  ViewControllerTwo.swift
//  Firebase
//
//  Created by Pavel Chekov on 14/04/2020.
//  Copyright © 2020 Pavel Chekov. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewControllerTwo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
   
    
    @IBAction func outAction(_ sender: Any) {
        do{
            try Auth.auth().signOut()
            self.navigationController?.popViewController(animated: true)
        }catch{
            print("Error while signing out!")
        }
    }
  

}
