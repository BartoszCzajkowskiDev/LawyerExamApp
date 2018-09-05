//
//  LoginViewController.swift
//  LawyerExamApp
//
//  Created by Bartosz Czajkowski on 26/07/2018.
//  Copyright © 2018 BartoszCzajkowski. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailImageView: UIImageView!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordImageView: UIImageView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signInLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginButtonAction(_ sender: Any) {
        
        let email = emailTextField.text
        let password = passwordTextField.text
        
        let userEmailStored = KeychainManager.shared.obtainUserEmail()
        let userPasswordStored = KeychainManager.shared.obtainUserPassword()
        
        if (userEmailStored == email) {
            if userPasswordStored == password {
                KeychainManager.shared.setUserLogged()
                self.dismiss(animated: true, completion: nil)
            }else{
                let alertMessage = AlertMessage()
                alertMessage.displayAlertMessage(title: "", message: "Your password is not correct!", acceptance: "OK", viewController: self)
                return
            }
        }else {
            let alertMessage = AlertMessage()
            alertMessage.displayAlertMessage(title: "", message: "Your email is not correct!", acceptance: "OK", viewController: self)
            return
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        
        setupLocalizedStrings(language: .Polish)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        return true
    }
    
    func passToMainQuizViewController(){
        let storyboard = UIStoryboard(name: "Quiz", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "MainQuizViewController")
        self.present(controller, animated: true, completion: nil)
    }
    
    func passToEulaViewController(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "EulaViewController")
        self.present(controller, animated: true, completion: nil)
    }

}

extension LoginViewController: LanguageLocalization{
    func setupLocalizedStrings(language: AppLanguage) {
        loginLabel.text = "login.loginLabel".localized(lang: language)
    }
    
}

