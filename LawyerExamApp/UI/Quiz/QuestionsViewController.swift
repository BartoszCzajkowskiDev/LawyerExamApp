//
//  QuestionsViewController.swift
//  LawyerExamApp
//
//  Created by Bartosz Czajkowski on 04/09/2018.
//  Copyright © 2018 BartoszCzajkowski. All rights reserved.
//

import UIKit
import AVFoundation

class QuestionsViewController: UIViewController {

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var incorrectLabel: UILabel!
    @IBOutlet weak var correctLabel: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var firstAnswerButton: UIButton!
    @IBOutlet weak var secondAnswerButton: UIButton!
    @IBOutlet weak var thirdAnswerButton: UIButton!
    @IBOutlet weak var fourthAnswerButton: UIButton!
    
    var parser = Parser()
    var player = AVAudioPlayer()
    var database = Database()
    var questionsFromDatabase = [Question]()
    var numberOfCurrentQuestion = 0
    var randomQuestion = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionsFromDatabase = database.retrieveQuestionsFromDatabase()
    }
    

    
    func playCorrectAnswerSong() {
        do {
            let audioPath = Bundle.main.path(forResource: "correctAnswerSound", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            player.play()
        
        }
        catch {
            // Error
        }
    }
    
    func playIncorrectAnswerSong() {
        do {
            let audioPath = Bundle.main.path(forResource: "wrongAnswerSound", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            player.play()
        }
        catch {
            // Error
        }
    }

}
