//
//  SignIn.swift
//  Cooklah
//
//  Created by I Dewa Agung Ary Aditya Wibawa on 13/12/20.
//

import UIKit

public class SignIn: UIViewController {
    
    var emailAddress = ["gaizka@mail.com","adit@mail.com","surya@mail.com"]
    var password = ["passwordAga", "passwordAdit", "passwordSurya"]
    
    
    var emailMatch = false
    var passwordMatch = false
    
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordInput.isSecureTextEntry = true
        UserDefaults.standard.set(emailAddress, forKey: "emailAddress")
        UserDefaults.standard.set(password, forKey: "password")
        
    }
    
    
    @IBAction func goingToSignIn(_ sender: Any) {
        
        for item in emailAddress {
            if emailInput.text == item{
                emailMatch = true
            }
        }
        
        for item in password {
            if passwordInput.text == item{
                passwordMatch = true
            }
        }
        
        if emailMatch == true && passwordMatch == true{
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "HomePage")
            nextViewController.modalPresentationStyle = .overCurrentContext
            self.present(nextViewController, animated:true, completion:nil)
        }
        
    }
    
    @IBAction func goingToSignUp(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "SignUp")
        nextViewController.modalPresentationStyle = .overCurrentContext
        self.present(nextViewController, animated:true, completion:nil)
    }
    

}
