//
//  PublicProtocols.swift
//  LawyerExamApp
//
//  Created by Bartosz Czajkowski on 26/07/2018.
//  Copyright © 2018 BartoszCzajkowski. All rights reserved.
//

import Foundation


public protocol LanguageLocalization {
    func setupLocalizedStrings(language: AppLanguage)
}
public protocol ThemeApplicable {
    func changeTheme(to theme:AppTheme)
}

public protocol FontApplicable {
    func boldFont(set bolded: Bool)
}

