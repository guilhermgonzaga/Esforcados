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
        let alternatives = ["11", "12", "13", "14"]
        let questions = [Question(question: "idade do guilherme", alternatives: alternatives,answerIndex: 3)]
        return [
            Challenge(name: "Atividade Um", dueDate: Date(timeIntervalSinceNow: 1002.54) , description: "Atividade para teste", questions: questions)
        ]
    }
}
