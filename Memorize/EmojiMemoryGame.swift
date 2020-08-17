 //
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Wen, Jin on 7/19/20.
//  Copyright © 2020 Wen, Jin. All rights reserved.
//

import SwiftUI

 // use inline function here
 func createCardContent(pairIndex: Int) -> String {
    return "👻"
 }
 

 
 class EmojiMemoryGame {
    //private var is a non-glass door only MemoryGame could manipulate
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷", "⻤"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
    
 }
