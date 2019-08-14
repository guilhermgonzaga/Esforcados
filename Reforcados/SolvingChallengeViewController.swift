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
    var correctAnswers = 0
    var nextQuestionIndex = 0

    var currentQuestion: Question? {
        return challenge?.questions[nextQuestionIndex]
    }


    @IBOutlet weak var questionTextView: UITextView!


    @IBAction func alternativeButtonAction(_ sender: Any) {

        if (currentQuestion?.answerIndex)! + 1 == (sender as AnyObject).tag {
            correctAnswers += 1
        }

        if nextQuestionIndex < (challenge?.questions.count)! {
            displayNextQuestion()
        } else {
            // pular para a tela de fim
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "challengeListTableViewController") as! ChallengeListTableViewController

            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = challenge?.name

        displayNextQuestion()
    }

    func displayNextQuestion() {
        questionTextView.text = currentQuestion?.question

        var button = UIButton()

        for i in 0...3 {
            button = view.viewWithTag(i+1) as! UIButton
            button.setTitle(currentQuestion?.alternatives[i], for: .normal)
        }

        if nextQuestionIndex < (challenge?.questions.count)! - 1 {
            nextQuestionIndex += 1
        }
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
