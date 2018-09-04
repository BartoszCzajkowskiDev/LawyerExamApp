//
//  LoginViewController.swift
//  LawyerExamApp
//
//  Created by Bartosz Czajkowski on 26/07/2018.
//  Copyright © 2018 BartoszCzajkowski. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var usernameImageView: UIImageView!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordImageView: UIImageView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signInLabel: UILabel!
    
    var loggedInStatus: Bool = true
    

    @IBAction func loginButtonAction(_ sender: Any) {
        if loggedInStatus {
            passToMainQuizViewController()
        }else{
            return
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func passToMainQuizViewController(){
        let storyboard = UIStoryboard(name: "Quiz", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "MainQuizViewController")
        self.present(controller, animated: true, completion: nil)
    }
    
    func userLoggedIn(loggedInStatus: Bool){
        self.loggedInStatus = loggedInStatus
    }
    func userLoggedOut(loggedInStatus: Bool){
        self.loggedInStatus = loggedInStatus
    }

    

}


