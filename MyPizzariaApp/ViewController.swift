//
//  ViewController.swift
//  MyPizzariaApp
//
//  Created by Elena Diniz on 24/05/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    var labelText = "Login"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        self.loginLabel.text = labelText.self
        self.logoImageView.image = UIImage (named: "logo")
        
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButton(_ sender: UIButton) {
        
        let email: String? = self.emailTextField.text
        
        let password: String? = self.passwordTextField.text
        
        guard let emailValue = email else {
            return
        }
        
        guard let passwordValue = password else {
            return
        }
        
        print("Dados de Login do usuário - email:\(emailValue) senha: \(passwordValue)")
        
        self.performSegue(withIdentifier: "listaPizza", sender: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.emailTextField {
            self.passwordTextField.becomeFirstResponder()
        }else{
            self.passwordTextField.resignFirstResponder()
        
        }
        return true
    }
    
}

