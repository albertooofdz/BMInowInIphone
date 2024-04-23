//
//  SignInViewController.swift
//  BMInowInIphone
//
//  Created by Mañanas on 18/4/24.
//

import UIKit
import FirebaseAuth

class SignInViewController: UIViewController {
    
    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var errorLabel: UILabel!
    @IBOutlet var passwordTextField: UITextField!
    @IBAction func signInButton(_ sender: Any) {
        
        let email = emailTextField.text!
        let password = passwordTextField.text!
        
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            guard let strongSelf = self else { return }
            
            if (error == nil){
                print(authResult!.user)
                self?.performSegue(withIdentifier: "navigateToHome", sender: self)
            }else{
                print(error!.localizedDescription)
                self?.errorLabel.isHidden=false
            }
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
  
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }

