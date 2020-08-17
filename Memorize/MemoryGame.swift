//
//  MemoryGame.swift
//  Memorize
//
//  Created by Wen, Jin on 7/19/20.
//  Copyright © 2020 Wen, Jin. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    // it is a card game
    var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = true
        var content: CardContent
        var id: Int
        
    }
}
