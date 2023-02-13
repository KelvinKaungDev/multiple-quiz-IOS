//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var titleLable: UILabel!
    
    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    @IBOutlet var thirdButton: UIButton!
    
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var userScore: UILabel!
    
    var quizzGenerater = QuizzGenerater();

    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0
        
        firstButton.setTitle(quizzGenerater.quizAnswerButton()[0], for: .normal)
        secondButton.setTitle(quizzGenerater.quizAnswerButton()[1], for: .normal)
        thirdButton.setTitle(quizzGenerater.quizAnswerButton()[2], for: .normal)
        
        userScore.text = "Score 0"
        showQuestions()
    }
    
    @IBAction func submitAnswer(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let checkAnswer = quizzGenerater.checkUserAnswer(userAnswer);

        if checkAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }

        quizzGenerater.quizNextQuestion()

        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(showQuestions), userInfo: nil, repeats: false)
    }

    @objc func showQuestions() {
        self.titleLable.text = quizzGenerater.getQuestionText()
        self.progressBar.progress = quizzGenerater.showProgress()
        self.userScore.text = "Score \(quizzGenerater.getScore())"

        firstButton.setTitle(quizzGenerater.quizAnswerButton()[0], for: .normal)
        secondButton.setTitle(quizzGenerater.quizAnswerButton()[1], for: .normal)
        thirdButton.setTitle(quizzGenerater.quizAnswerButton()[2], for: .normal)
        
        self.firstButton.backgroundColor = UIColor.clear
        self.secondButton.backgroundColor = UIColor.clear
        self.thirdButton.backgroundColor = UIColor.clear
    }
}

