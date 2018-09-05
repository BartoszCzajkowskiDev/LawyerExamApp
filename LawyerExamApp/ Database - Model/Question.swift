//
//  Question.swift
//  LawyerExamApp
//
//  Created by Bartosz Czajkowski on 04/09/2018.
//  Copyright © 2018 BartoszCzajkowski. All rights reserved.
//

import Foundation

struct Question {
    var question : String
    var answers : [String]
    var answer : Int
    
    init(question: String, answers: [String], answer: Int){
        self.question = question
        self.answers = answers
        self.answer = answer
    }
}
