//
//  QuizzGenerater.swift
//  Quizzler-iOS13
//
//  Created by Kaung Htet OO on 2/13/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizzGenerater {
    
    let quizzQuestions = [
        Question(question: "Which is the largest organ in the human body?", multiple: ["Heart", "Skin", "Large Intestine"], answer: "Skin"),
               Question(question: "Five dollars is worth how many nickels?", multiple: ["25", "50", "100"], answer: "100"),
               Question(question: "What do the letters in the GMT time zone stand for?", multiple: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], answer: "Greenwich Mean Time"),
               Question(question: "What is the French word for 'hat'?", multiple: ["Chapeau", "Écharpe", "Bonnet"], answer: "Chapeau"),
               Question(question: "In past times, what would a gentleman keep in his fob pocket?", multiple: ["Notebook", "Handkerchief", "Watch"], answer: "Watch"),
               Question(question: "How would one say goodbye in Spanish?", multiple: ["Au Revoir", "Adiós", "Salir"], answer: "Adiós"),
               Question(question: "Which of these colours is NOT featured in the logo for Google?", multiple: ["Green", "Orange", "Blue"], answer: "Orange"),
               Question(question: "What alcoholic drink is made from molasses?", multiple: ["Rum", "Whisky", "Gin"], answer : "Rum"),
               Question(question: "What type of animal was Harambe?", multiple: ["Panda", "Gorilla", "Crocodile"], answer: "Gorilla"),
               Question(question: "Where is Tasmania located?", multiple: ["Indonesia", "Australia", "Scotland"], answer: "Australia")

        
    ]
    
    var quizzNumber = 0
    var score : Int = 0
    
    func quizzQuestionCount() -> Int {
        return self.quizzQuestions.count
    }
    
    func quizAnswerButton() -> [String] {
       return quizzQuestions[quizzNumber].multipleChoice
    }
    
    mutating func checkUserAnswer(_ userAnswer : String) -> Bool {
        if (userAnswer != quizzQuestions[quizzNumber].answer) {
            return false
        }
        
        score += 1
        return true
    }
    
    func getScore() -> Int {
        return score
    }
    
    func totalScore() -> Int {
        return score
    }
    
    mutating func quizNextQuestion() {
        if quizzNumber + 1 < quizzQuestions.count {
            quizzNumber += 1
        } else {
            quizzNumber = 0
            score = 0
        }
    }
    
    func getQuestionText() -> String {
        return quizzQuestions[quizzNumber].question
    }
    
    func getQuestionAnswer() -> String {
        return quizzQuestions[quizzNumber].answer
    }
    
    func showProgress() -> Float {
        return Float(quizzNumber) / Float(quizzQuestions.count)
    }
}
