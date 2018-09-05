//
//  SignInViewController.swift
//  LawyerExamApp
//
//  Created by Bartosz Czajkowski on 04/09/2018.
//  Copyright © 2018 BartoszCzajkowski. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController, UITextFieldDelegate {
    

    @IBOutlet weak var registerTitle: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var repeatPasswordLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var returnToLoginButton: UIButton!
    
    @IBAction func signInButton(_ sender: Any) {
        let username = usernameTextField.text
        let email = emailTextField.text
        let password = passwordTextField.text
        let repeatPassword = repeatPasswordTextField.text
        let alert = AlertMessage()
        
        if ((username?.isEmpty)! || (email?.isEmpty)! || (password?.isEmpty)! || (repeatPassword?.isEmpty)!) {
            
            alert.displayAlertMessage(title: "", message: "All fields are required", acceptance: "OK", viewController: self)
            return
        }
        if (password != repeatPassword) {

            alert.displayAlertMessage(title: "", message: "Passwords do not match", acceptance: "OK", viewController: self)
            return
        }
        if let username = username{
            KeychainManager.shared.setUsername(username: username)
        }
        if let email = email{
           KeychainManager.shared.setEmail(email: email)
        }
        if let password = password{
            KeychainManager.shared.setPassword(password: password)
        }

        alert.displayAlertMessageWithDismissAction(title: "Congratulations!", message: "Registraction is successful. Thank you!", acceptance: "OK", viewController: self)
    }
    
    @IBAction func returnToLoginButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.usernameTextField.delegate = self
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        self.repeatPasswordTextField.delegate = self
        
        setupLocalizedStrings(language: AppLanguage.Polish)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameTextField.resignFirstResponder()
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        repeatPasswordTextField.resignFirstResponder()
        return true
    }
}
extension RegistrationViewController: LanguageLocalization{
    func setupLocalizedStrings(language: AppLanguage) {
        registerTitle.text = "registrationViewController.registerTitle".localized(lang: language)
        usernameLabel.text = "registrationViewController.usernameLabel".localized(lang: language)
        passwordLabel.text = "registrationViewController.passwordLabel".localized(lang: language)
        repeatPasswordLabel.text = "registrationViewController.repeatPasswordLabel".localized(lang: language)
        signInButton.setTitle("registrationViewController.signInButton".localized(lang: language), for: .normal)
        returnToLoginButton.setTitle("registrationViewController.returnToLoginButton".localized(lang: language), for: .normal)
    }
}

