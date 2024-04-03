//
//  ViewController.swift
//  BMInowInIphone
//
//  Created by Mañanas on 2/4/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var weigthTV: UILabel!
    
    @IBOutlet var weigthTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    

    }
    
    @IBAction func calculateBtn(_ sender: Any) {
        var weigth : Int? = Int(weigthTF.text!)
        weigthTV.text = "\(weigth!)"
        
    }
   
        
        
        
        
      
        
       
        
    }

  



