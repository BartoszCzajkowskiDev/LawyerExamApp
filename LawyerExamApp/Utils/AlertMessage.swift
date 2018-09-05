//
//  AlertMessage.swift
//  LawyerExamApp
//
//  Created by Bartosz Czajkowski on 05/09/2018.
//  Copyright © 2018 BartoszCzajkowski. All rights reserved.
//

import Foundation
import UIKit

class AlertMessage{
    
    func displayAlertMessage(title: String, message: String, acceptance: String, viewController: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        let acceptanceAction = UIAlertAction(title: acceptance, style: UIAlertActionStyle.default, handler: nil)
        alert.addAction(acceptanceAction)
        viewController.present(alert, animated: true, completion: nil)
    }
    func displayAlertMessageWithDismissAction(title: String, message: String, acceptance: String, viewController: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        let acceptanceAction = UIAlertAction(title: acceptance, style: UIAlertActionStyle.default, handler:{ action in
            viewController.dismiss(animated: true, completion: nil)
            })

        alert.addAction(acceptanceAction)
        viewController.present(alert, animated: true, completion: nil)
    }
}
