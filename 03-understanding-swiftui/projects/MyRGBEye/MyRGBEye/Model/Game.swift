//
//  Game.swift
//  MyRGBEye
//
//  Created by Paradox Space Rumy M1 on 25/8/21.
//

import Foundation

struct Game {
    var target = RGB.random()
    var totalScore: Int = 0
    var currentRound: Int = 1
    var scoreInCurrentRound = 0
    
    mutating func startNewRound() {
        currentRound += 1
        scoreInCurrentRound = 0
        target = RGB.random()
    }
    
    mutating func startNewGame(){
        totalScore = 0
        currentRound = 0
        startNewRound()
    }
    
    mutating func check(guess: RGB) {
        let difference = lround(guess.difference(target: target) * 100.0)
        scoreInCurrentRound = 100 - difference
        if difference == 0 {
            scoreInCurrentRound += 100
        } else if difference == 1 { scoreInCurrentRound += 50 }
        totalScore += scoreInCurrentRound
    }
}
