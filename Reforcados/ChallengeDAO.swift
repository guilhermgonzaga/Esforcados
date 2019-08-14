//
//  ChallengeDAO.swift
//  Reforcados
//
//  Created by student on 09/08/19.
//  Copyright © 2019 Hackatruck. All rights reserved.
//

import Foundation

class ChallengeDAO {

    static func getList() -> [Challenge] {
        let alternatives = ["17", "12", "21", "14"]
        let questions = [
            Question(question: "idade do Paulo", alternatives: alternatives, answerIndex: 2),
            Question(question: "idade do Guilherme", alternatives: alternatives, answerIndex: 3)
        ]
        return [
            Challenge(name: "Atividade de idades", dueDate: Date(timeIntervalSinceNow: 1000.0), description: "Atividade para adivinhar a idade", questions: questions)
        ]
    }
}
