//
//  MainViewController.swift
//  LawyerExamApp
//
//  Created by Bartosz Czajkowski on 05/09/2018.
//  Copyright © 2018 BartoszCzajkowski. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        let isUserLoggedIn = KeychainManager.shared.isUserLogged()
        if !isUserLoggedIn {
            self.performSegue(withIdentifier: "loginSegue", sender: self)
        }
    }
    
    @IBAction func logOutButton(_ sender: Any) {
        KeychainManager.shared.setUserLogOut()
        self.performSegue(withIdentifier: "loginSegue", sender: self)
    }
    

}
