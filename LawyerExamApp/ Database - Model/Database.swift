//
//  Database.swift
//  LawyerExamApp
//
//  Created by Bartosz Czajkowski on 04/09/2018.
//  Copyright © 2018 BartoszCzajkowski. All rights reserved.
//

import Foundation

class Database{
    
    var questionsInDatabase = [Question]()
    
    func saveQuestionsToDatabase(questions: [Question]){
        questionsInDatabase.append(contentsOf: questions)
    }
    
    func retrieveQuestionsFromDatabase() -> [Question]{
        var questions = [Question]()
        questions.append(contentsOf: questionsInDatabase)
        return questions
    }
    
    func addQuestionToDatabase(question: Question) {
        questionsInDatabase.append(question)
    }
    
    func retrieveQuestionFromDatabase(questionNo: Int) -> Question{
        return questionsInDatabase[questionNo+1]
    }
    
    
}
