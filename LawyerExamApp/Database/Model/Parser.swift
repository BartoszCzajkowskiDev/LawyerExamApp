//
//  Parser.swift
//  LawyerExamApp
//
//  Created by Bartosz Czajkowski on 04/09/2018.
//  Copyright © 2018 BartoszCzajkowski. All rights reserved.
//

import Foundation

class Parser{
    
    var questions = [Question]()
    var database = Database()
    
    func parseData(data: Question){
        questions = [Question(question: "Przychód przypadający na 1 jednostkę sprzedaży to…", answers:["przychód przeciętny", "przychód marginalny", "-", "-"], answer: 0), Question(question: "Dodatkowy przychód przedsiębiorstwa, uzyskany ze sprzedaży dodatkowej jednostki produkcji to…", answers:["przychód przeciętny", "przychód marginalny", "-", "-"], answer: 1)]
        database.saveQuestionsToDatabase(questions: questions)
    }
    
}
