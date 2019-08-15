//
//  Question.swift
//  Reforcados
//
//  Created by student on 09/08/19.
//  Copyright © 2019 Hackatruck. All rights reserved.
//

import Foundation

class Question {
    
    let question: String
    let alternatives: [String]
    let answerIndex: Int
    
    init(question: String, alternatives: [String], answerIndex: Int) {
        self.question = question
        self.alternatives = alternatives
        self.answerIndex = answerIndex
    }

    func isCorrect(index: Int) -> Bool {
        
        return index == answerIndex
    }
}
