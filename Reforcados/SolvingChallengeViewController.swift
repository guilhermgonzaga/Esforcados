//
//  SolvingChallengeViewController.swift
//  Reforcados
//
//  Created by student on 09/08/19.
//  Copyright © 2019 Hackatruck. All rights reserved.
//

import UIKit

class SolvingChallengeViewController: UIViewController {

    var challenge: Challenge?
    var currentQuestionIndex = 0
    var correctAnswerIndex: UInt32?
    var currentQuestion: Question {
        return (challenge?.questions[currentQuestionIndex])!
    }

    @IBOutlet weak var questionTextView: UITextView!

    @IBAction func alternativeButtonAction(_ sender: Any) {

        if ((sender as AnyObject).tag == Int(correctAnswerIndex!)) {
            // acertou
        } else {
            // errou
        }

        if (currentQuestionIndex != challenge?.questions.count) {
            displayNextQuestion()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = challenge?.name
    }

    //Function that displays new question
    func displayNextQuestion() {
        questionTextView.text = currentQuestion.question

        var button = UIButton()

        for i in 0...3 {
            button = view.viewWithTag(i+1) as! UIButton
            button.setTitle(currentQuestion.alternatives[i], for: .normal)
        }
        currentQuestionIndex += 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
