//
//  HomeViewController.swift
//  BMInowInIphone
//
//  Created by Mañanas on 18/4/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var weightTF: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var heightTF: UITextField!
    
    
    
    @IBAction func calculateButton(_ sender: Any) {
        guard let weightText = weightTF.text, let weight = Double(weightText) else {
                return // Manejar el caso en el que el peso no es un número válido
            }
            guard let heightText = heightTF.text, let height = Double(heightText) else {
                return // Manejar el caso en el que la altura no es un número válido
            }
            
            let heightInMeters = height / 100.0 // Convertir la altura a metros
            let bmi = weight / (heightInMeters * heightInMeters) // Calcular el IMC
            
            resultLabel.text = String(format: "%.2f", bmi)
            
            resultLabel.isHidden = false
            
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        showToast(controller: self, message: "Welcome", seconds: 2.0)
      
        
        // Do any additional setup after loading the view.
    }
    
    func showToast(controller: UIViewController, message : String, seconds: Double) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.view.backgroundColor = UIColor.black
        alert.view.alpha = 0.6
        alert.view.layer.cornerRadius = 15
        

        controller.present(alert, animated: true)

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + seconds) {
            alert.dismiss(animated: true)
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

}
