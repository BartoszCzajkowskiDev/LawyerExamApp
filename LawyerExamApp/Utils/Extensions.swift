//
//  Extensions.swift
//  LawyerExamApp
//
//  Created by Bartosz Czajkowski on 04/09/2018.
//  Copyright © 2018 BartoszCzajkowski. All rights reserved.
//

import Foundation
import UIKit


extension UIColor {
    
    static func themeColor(name: String, theme: AppTheme) -> UIColor {
        
        let colorString = String.init(format:"%@_Color/%@", theme.rawValue, name)
        guard let colorObject =  UIColor.init(named: colorString) else {
            return UIColor()
        }
        return colorObject
    }
}

extension UIImage {
    
    static func themeImage(name: String, theme: AppTheme) -> UIImage {
        
        let imageString = String.init(format:"%@_Image/%@" ,theme.rawValue, name )
        guard let imageObject = UIImage.init(named: imageString) else {
            return UIImage()
        }
        return imageObject
    }
    
}

extension String {
    func localized(lang:AppLanguage) ->String {
        guard let path = Bundle.main.path(forResource: lang.rawValue, ofType: "lproj") else{
            return self
        }
        let bundle = Bundle(path: path)
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}

