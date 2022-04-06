//
//  Game.swift
//  Taiwo-applePie
//
//  Created by Taiwo Adekanmbi on 2022-04-06.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    mutating func playerGuessed(letter: Character) {
          guessedLetters.append(letter)
          if !word.contains(letter) {
            incorrectMovesRemaining -= 1
          }
        }
    
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += " "
            }
        }
        return guessedWord
    }
 
}



