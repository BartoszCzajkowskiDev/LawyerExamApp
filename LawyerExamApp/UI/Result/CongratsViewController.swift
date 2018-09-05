//
//  CongratsViewController.swift
//  LawyerExamApp
//
//  Created by Bartosz Czajkowski on 05/09/2018.
//  Copyright © 2018 BartoszCzajkowski. All rights reserved.
//

import UIKit

class CongratsViewController: UIViewController {

    
    @IBOutlet weak var congratsImageView: UIImageView!
    @IBOutlet weak var congratsLabel: UILabel!
    @IBOutlet weak var congratsCommentLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
extension StandardResultViewController: LanguageLocalization{
    func setupLocalizedStrings(language: AppLanguage) {
        
    }
}
