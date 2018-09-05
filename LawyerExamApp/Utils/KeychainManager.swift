//
//  KeychainManager.swift
//  LawyerExamApp
//
//  Created by Bartosz Czajkowski on 04/09/2018.
//  Copyright © 2018 BartoszCzajkowski. All rights reserved.
//

import Foundation
import KeychainAccess

final class KeychainManager{
    
    enum User: String {
        case tester = "tester"
        case developer = "developer"
    }
    
    private init() {}
    static let shared = KeychainManager()
    private let keychain = Keychain(service: "com.crafcode.lawyerexamapp")
    
    public func setUsername(username:String){
        keychain["username"] = username
    }
    public func setEmail(email:String){
        keychain["email"] = email
    }
    public func setPassword(password:String){
        keychain["password"] = password
    }
    public func clearUsername(username:String){
        keychain["username"] = username
    }
    public func clearPassword(password:String){
        keychain["password"] = password
    }
    public func clearEmail(password:String){
        keychain["email"] = password
    }
    public func setUserLogged(){
        keychain["loggedIn"] = "1"
    }
    public func setUserLogOut(){
        keychain["loggedIn"] = ""
    }
    public func setTheme(theme:String){
        keychain["theme"] = theme
    }
    public func setLanguage(language:String){
        keychain["language"] = language
    }
    public func setEula(eulaUserVersion: String){
        keychain["\(eulaUserVersion)"] = "1"
    }
    public func isUserLogged()->Bool{
        guard let logg:String = keychain["loggedIn"]  else {
            return false
        }
        return logg == "1"
    }
    public func obtainUsername()->String{
        guard let user:String = keychain["username"]  else {
            return ""
        }
        return user
    }
    public func obtainUserEmail()->String{
        guard let user:String = keychain["email"]  else {
            return ""
        }
        return user
    }
    public func obtainUserPassword()->String{
        guard let user:String = keychain["password"]  else {
            return ""
        }
        return user
    }
    public func obtainTheme()->AppTheme{
        guard let theme:String = keychain["theme"]  else {
            return AppTheme.White
        }
        return AppTheme(rawValue: theme) ?? AppTheme.White
    }
    public func obtainLanguage()->AppLanguage{
        guard let url:String = keychain["language"]  else {
            return AppLanguage.English
        }
        return AppLanguage(rawValue: url) ?? AppLanguage.Polish
    }
    
    public func isEulaAccepted() -> Bool {
        if let version = Bundle.main.object(forInfoDictionaryKey: kCFBundleVersionKey as String) {
            let actualUserEmail = KeychainManager.shared.obtainUserEmail()
            guard let actualVersion = version as? String else {
                return false
            }
            let userVersionS = "\(actualUserEmail)" + "_" + "\(actualVersion)" + "_LawyerExamApp"
            if keychain[userVersionS] == "1" {
                return true
    
                }
        }
        return false
    }
    public func obtainAllKeychainValues() {
        
        var keychainValues = [String:String]()
        
        keychainValues["username"] = keychain["username"]
        keychainValues["password"] = keychain["password"]
        keychainValues["loggedIn"] = keychain["loggedIn"]
        keychainValues["theme"] = keychain["theme"]
        keychainValues["language"] = keychain["language"]

        
        for (key,value) in keychainValues{
            print("\(key) : \(value)")
        }
    }
    public func resetKeychain() {
        let reset = ""
        keychain["username"] = reset
        keychain["password"] = reset
        keychain["loggedIn"] = reset
        keychain["theme"] = reset
        keychain["language"] = reset
    }
}
