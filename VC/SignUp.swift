//
//  SignUp.swift
//  Cooklah
//
//  Created by I Dewa Agung Ary Aditya Wibawa on 13/12/20.
//

import UIKit

class SignUp: UIViewController {
    
    var emailAddress : Array = UserDefaults.standard.array(forKey: "emailAddress")!
    var password : Array = UserDefaults.standard.array(forKey: "password")!
    var name = [""]
    
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordInput.isSecureTextEntry = true
        
    }
    
    @IBAction func getStarted(_ sender: Any) {
        name.append(nameInput.text!)
        UserDefaults.standard.set(nameInput.text, forKey: "userName")
        emailAddress.append(emailInput.text!)
        password.append(passwordInput.text!)
        
        UserDefaults.standard.setValue(emailAddress, forKey: "emailAddress")
        UserDefaults.standard.setValue(password, forKey: "password")
        
        if nameInput.text != nil && passwordInput.text != nil && emailInput.text != nil {
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "WelcomeBoard")
            nextViewController.modalPresentationStyle = .overCurrentContext
            self.present(nextViewController, animated:true, completion:nil)
        }
    }
    

}
