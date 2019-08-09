//
//  File.swift
//  Reforcados
//
//  Created by student on 09/08/19.
//  Copyright © 2019 Hackatruck. All rights reserved.
//

import Foundation


class Challenge {
    let name: String
    let dueDate: Date
    let description: String
    let questions: [Question]
    
    init(name: String, dueDate: Date , description: String, questions: [Question]) {
        self.name = name
        self.dueDate = dueDate
        self.description = description
        self.questions = questions
    }
}
