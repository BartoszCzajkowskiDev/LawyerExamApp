//
//  StandardResultViewController.swift
//  LawyerExamApp
//
//  Created by Bartosz Czajkowski on 05/09/2018.
//  Copyright © 2018 BartoszCzajkowski. All rights reserved.
//

import UIKit

class StandardResultViewController: UIViewController {

    
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var wellDoneLabel: UILabel!
    @IBOutlet weak var resultImageView: UIImageView!
    @IBOutlet weak var resultCommentLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timeValueLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var scoreValueLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBAction func backButtonAction(_ sender: Any) {
    }
    
    @IBAction func playAgainButtonAction(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
extension StandardResultViewController: LanguageLocalization{
    func setupLocalizedStrings(language: AppLanguage) {
      
    }
}
