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
        let questions = [
            Question(question: "idade do Paulo", alternatives: ["17", "20", "21", "14"], answerIndex: 2),
            Question(question: "idade do Guilherme", alternatives: ["19", "20", "27", "14"], answerIndex: 3)
        ]
        return [
            Challenge(name: "Atividade de idades", dueDate: Date(timeIntervalSinceNow: 1000.0), description: "Adivinhe as idades", questions: questions)
        ]
    }
}
