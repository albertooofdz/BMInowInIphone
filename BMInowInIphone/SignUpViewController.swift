//
//  SignUpViewController.swift
//  BMInowInIphone
//
//  Created by Mañanas on 18/4/24.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {
    
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    
    
    
    @IBAction func signUpButton(_ sender: Any) {
        
        let email = emailTextField.text!
        let password = passwordTextField.text!
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
          
            if (error == nil){
                self.performSegue(withIdentifier: "navigateToSignIn", sender: self)
                
            }else{
                print(error!.localizedDescription)
            }
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


