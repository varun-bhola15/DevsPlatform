//
//  AuthVC.swift
//  DevsPlatform
//
//  Created by varun bhola on 11/01/18.
//  Copyright © 2018 varun15bhola. All rights reserved.
//

import UIKit
import Firebase
//import FacebookLogin
class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            dismiss(animated: true, completion: nil)
        }
    }

    @IBAction func facebookSignInBtnWasPressed(_ sender: Any) {
    }
    @IBAction func googleSignInBtnWasPressed(_ sender: Any) {
    }
    @IBAction func signInWithEmailBtnWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
}
