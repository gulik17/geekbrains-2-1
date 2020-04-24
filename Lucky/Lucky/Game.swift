//
//  GameStruct.swift
//  Lucky
//
//  Created by Администратор on 21.04.2020.
//  Copyright © 2020 Home. All rights reserved.
//

import Foundation

struct QuestionStruct {
    var q: String
    var a1: String
    var t1: Bool
    var a2: String
    var t2: Bool
    var a3: String
    var t3: Bool
    var a4: String
    var t4: Bool
    
    init(q: String, a1: String, t1: Bool, a2: String, t2: Bool, a3: String, t3: Bool, a4: String, t4: Bool) {
        self.q = q
        self.a1 = a1
        self.a2 = a2
        self.a3 = a3
        self.a4 = a4
        self.t1 = t1
        self.t2 = t2
        self.t3 = t3
        self.t4 = t4
    }
}

class Game {
    static let shared = Game()
    var gameSession: GameSession?
    
    private init() {}
}

class GameSession {
    var qObj = [QuestionStruct]()
    var current: Int = 0
    let q1 = QuestionStruct(
            q: "Кто стал звездами мультипликационного сериала?",
            a1: "Хомячки-самураи",t1: false,
            a2: "Ужи-якудзы",t2: false,
            a3: "Черепашки-ниндзя",t3: true,
            a4: "Ежихи-гейши",t4: false
    )
    let q2 = QuestionStruct(
            q: "Что из перечисленного есть у троллейбуса?",
            a1: "Когти",t1: false,
            a2: "Уши",t2: false,
            a3: "Рога",t3: true,
            a4: "Зубы",t4: false
    )
    let q3 = QuestionStruct(
            q: "Какой дефект лечит логопед?",
            a1: "амбиции",t1: false,
            a2: "дикции",t2: true,
            a3: "фикции",t3: false,
            a4: "эредиции",t4: false
    )
    let q4 = QuestionStruct(
            q: "Сколько пальцев на руке?",
            a1: "4",t1: false,
            a2: "5",t2: true,
            a3: "6",t3: false,
            a4: "7",t4: false
    )
    let q5 = QuestionStruct(
            q: "Сколько пальцев на руке?",
            a1: "4",t1: false,
            a2: "5",t2: true,
            a3: "6",t3: false,
            a4: "7",t4: false
    )
    let q6 = QuestionStruct(
            q: "Сколько пальцев на руке?",
            a1: "4",t1: false,
            a2: "5",t2: true,
            a3: "6",t3: false,
            a4: "7",t4: false
    )
    let q7 = QuestionStruct(
            q: "Сколько пальцев на руке?",
            a1: "4",t1: false,
            a2: "5",t2: true,
            a3: "6",t3: false,
            a4: "7",t4: false
    )
    let q8 = QuestionStruct(
            q: "Сколько пальцев на руке?",
            a1: "4",t1: false,
            a2: "5",t2: true,
            a3: "6",t3: false,
            a4: "7",t4: false
    )
    let q9 = QuestionStruct(
            q: "Сколько пальцев на руке?",
            a1: "4",t1: false,
            a2: "5",t2: true,
            a3: "6",t3: false,
            a4: "7",t4: false
    )
    let q10 = QuestionStruct(
            q: "Сколько пальцев на руке?",
            a1: "4",t1: false,
            a2: "5",t2: true,
            a3: "6",t3: false,
            a4: "7",t4: false
    )
    let q11 = QuestionStruct(
            q: "Сколько пальцев на руке?",
            a1: "4",t1: false,
            a2: "5",t2: true,
            a3: "6",t3: false,
            a4: "7",t4: false
    )
    let q12 = QuestionStruct(
            q: "Сколько пальцев на руке?",
            a1: "4",t1: false,
            a2: "5",t2: true,
            a3: "6",t3: false,
            a4: "7",t4: false
    )
    let q13 = QuestionStruct(
            q: "Сколько пальцев на руке?",
            a1: "4",t1: false,
            a2: "5",t2: true,
            a3: "6",t3: false,
            a4: "7",t4: false
    )
    let q14 = QuestionStruct(
            q: "Сколько пальцев на руке?",
            a1: "4",t1: false,
            a2: "5",t2: true,
            a3: "6",t3: false,
            a4: "7",t4: false
    )
    let q15 = QuestionStruct(
            q: "Сколько пальцев на руке?",
            a1: "4",t1: false,
            a2: "5",t2: true,
            a3: "6",t3: false,
            a4: "7",t4: false
    )
    
    init() {
        qObj.append(q1)
        qObj.append(q2)
        qObj.append(q3)
        qObj.append(q4)
        qObj.append(q5)
        qObj.append(q6)
        qObj.append(q7)
        qObj.append(q8)
        qObj.append(q9)
        qObj.append(q10)
        qObj.append(q11)
        qObj.append(q12)
        qObj.append(q13)
        qObj.append(q14)
        qObj.append(q15)
    }
}
