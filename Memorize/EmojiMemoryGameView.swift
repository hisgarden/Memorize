//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Wen, Jin on 7/19/20.
//  Copyright © 2020 Wen, Jin. All rights reserved.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    //redraw by being an ObservedObject
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }

}


struct CardView: View {
    var card: MemoryGame<String>.Card
       
    var body: some View {
        ZStack() {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            }
            else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

