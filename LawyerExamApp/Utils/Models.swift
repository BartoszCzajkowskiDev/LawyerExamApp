//
//  Models.swift
//  LawyerExamApp
//
//  Created by Bartosz Czajkowski on 05/09/2018.
//  Copyright © 2018 BartoszCzajkowski. All rights reserved.
//

import Foundation

struct ThemeData{
    let themeName:String
    let themeIcon:String
    let theme:AppTheme
}

public enum AppTheme:String {
    case White = "White"
    case Gray = "Gray"
    case Green = "Green"
}

public enum AppLanguage: String {
    case English = "en"
    case French = "fr"
    case Polish = "pl"
}
