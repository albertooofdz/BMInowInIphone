//
//  ViewController.swift
//  BMInowInIphone
//
//  Created by Mañanas on 2/4/24.
//

import UIKit
import FirebaseAuth
import GoogleSignIn
import FirebaseCore

class ViewController: UIViewController {
    @IBAction func googleLogIn(_ sender: Any) {
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }
        
        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config
        
        // Start the sign in flow!
        GIDSignIn.sharedInstance.signIn(withPresenting: self) { [unowned self] result, error in
            guard error == nil else {
                return print("1")
            }
            
            guard let user = result?.user,
                  let idToken = user.idToken?.tokenString
            else {
                return print("2")
            }
            
            let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                           accessToken: user.accessToken.tokenString)
            
            Auth.auth().signIn(with: credential) { result, error in
                
                if (error == nil){
                    self.performSegue(withIdentifier: "navigateToHome", sender: self)
                }else{
                    print(error!.localizedDescription)
                    
                }
                
            }
        
    
            
        
        

          // At this point, our user is signed in
        }
            
        
    }
    
    
    @IBAction func signInButton(_ sender: Any) {
        
        
        
        
    }
    @IBAction func signUpButton(_ sender: Any) {

        
        
    }
    
   
            override func viewDidLoad() {
                super.viewDidLoad()
                
                
                
                
                
                
            }
    
    
            
            
            
            
            
        }
        
    
