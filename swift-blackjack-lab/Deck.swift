//
//  Deck.swift
//  swift-blackjack-lab
//
//  Created by Flatiron School on 7/12/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
//import Card
class Deck {
   private var undealtCards = [Card]()
    private var dealtCards = [Card]()


    init(){

        //generateNewDeck()
        undealtCards = generateNewDeck()
    }
    
    func generateNewDeck() -> [Card] {
        var newDeck: [Card] = []
        for suit in Card.validSuits(){
            for rank in Card.validRanks(){
                let card = Card.init(suit: suit, rank: rank)
                newDeck.append(card)
            }
//            if newDeck.count >= 51 {
//                //dealtCards.removeAll()
//                break
//            }
        }
        return newDeck
    }
    
    func drawCard() -> Card {
        let card = undealtCards.last
        undealtCards.removeLast()
        dealtCards.append(card!)
        return card!
    }
    
    
    func shuffle() {
        print(undealtCards)
        for (index, _) in undealtCards.enumerate(){
        let randomIndex = Int(arc4random_uniform(52))
            if (index != randomIndex){
            swap(&undealtCards[index], &undealtCards[randomIndex])
            }
        }
        print(undealtCards)
    }
    
    
    
    
    var description: String {
        let cardsRemaining = "Cards Remaining: \(undealtCards.count)"
        let cardsDealt = "Cards Dealt: \(dealtCards.count)"
    return cardsRemaining + cardsDealt
    }
}


