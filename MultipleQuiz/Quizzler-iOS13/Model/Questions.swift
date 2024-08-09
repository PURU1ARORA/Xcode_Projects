//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Puru Arora on 30/06/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var question : String
    var ans : [String]
    var correctAns : String
    
    init(q: String, a: [String], correctAnswer: String) {
        self.question = q
        self.ans = a
        self.correctAns = correctAnswer
    }
}
