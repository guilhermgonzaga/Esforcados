//
//  ClassDAO.swift
//  Esforcados
//
//  Created by student on 14/08/19.
//  Copyright © 2019 Hackatruck. All rights reserved.
//

import Foundation

class ClassDAO {
    
    static func getList() -> [Class] {
        return [
            Class(name: "Turma de matemática", image: "matematica"),
            Class(name: "Turma de música", image: "music")
        ]
    }
}
