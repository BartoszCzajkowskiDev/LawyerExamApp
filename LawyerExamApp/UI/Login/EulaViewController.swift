//
//  EulaViewController.swift
//  LawyerExamApp
//
//  Created by Bartosz Czajkowski on 26/07/2018.
//  Copyright © 2018 BartoszCzajkowski. All rights reserved.
//

import UIKit

class EulaViewController: UIViewController {

    
    @IBOutlet weak var eulaTitleLabel: UILabel!
    @IBOutlet weak var eulaTitleView: UIView!
    @IBOutlet weak var eulaContentTextView: UITextView!
    @IBOutlet weak var rejectOutlet: UIButton!
    @IBOutlet weak var acceptOutlet: UIButton!
    
    @IBAction func rejectButton(_ sender: Any) {
        exit(0)
    }
    @IBAction func acceptButton(_ sender: Any) {
        if let version = Bundle.main.object(forInfoDictionaryKey: kCFBundleVersionKey as String){
            let actualUserEmail = KeychainManager.shared.obtainUserEmail()
            guard let actualVersion = version as? String else {
                dismiss(animated: true, completion: nil)
                return
            }
            let userVersionS = "\(actualUserEmail)" + "_" + "\(actualVersion)" + "_LawyerExamApp"
            KeychainManager.shared.setEula(eulaUserVersion: userVersionS)
        }
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "eula", ofType: "txt")
        let eula = try? String(contentsOfFile: path ?? "", encoding: .utf8)
        eulaContentTextView.text = eula
        eulaContentTextView.isEditable = false
        eulaContentTextView.isScrollEnabled = true

    }
}
