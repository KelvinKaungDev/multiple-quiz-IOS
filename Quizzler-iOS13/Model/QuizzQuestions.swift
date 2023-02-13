//
//  QuizzQuestions.swift
//  Quizzler-iOS13
//
//  Created by Kaung Htet OO on 2/7/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var question : String
    var answer : String
    var multipleChoice : [String]
    
    init(question : String, multiple : [String], answer : String) {
        self.question = question
        self.multipleChoice = multiple
        self.answer = answer
    }
}
