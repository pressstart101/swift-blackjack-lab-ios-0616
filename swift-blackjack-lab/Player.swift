//
//  Player.swift
//  swift-blackjack-lab
//
//  Created by Flatiron School on 7/12/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
class Player {
    var name: String
    var cards = [Card]()
    var handscore: UInt {
        var score = UInt(0)
        for card in cards{
            score += UInt(card.cardValue)
            if score <= 11 && card.cardValue == 1 && evilAce() < 2{
                score += 10
            }
            //handscore = score
        }
        //ace()
        
        
//        for card in cards {
//        if card.cardValue == 1 && self.handscore < 11{
//            card.cardValue += 10
//            }
//        }
        return score
    }
    var blackjack: Bool {
        if self.cards.count == 2 && self.handscore == 21 {
        return true
        }
        return false
    }
    var busted: Bool {
        if handscore > 21{
        return true
        }
        return false
    }
    var stayed: Bool = false
    var mayHit: Bool{
        if self.busted == false && self.blackjack == false && self.stayed == false{
        return true
        }
        return false
    }
    var tokens: UInt
    var description: String{
    return "Player\(name)\n handscore\(handscore)\n tokens\(tokens)\n busted\(busted)\n stayed\(stayed)\n blackjack\(blackjack)\n cards\(cards) )"

    }
    
    init(name: String){
        self.name = name
        
        self.tokens = 100
        ////????
    }


    //Make handscore a calculated property that evaluates the cards array. It may use one Ace as a value of 11 if doing so will not bust the hand.
    func canPlaceBet(score: UInt) -> Bool{
        if handscore < 17 && tokens >= score{
            return true
        }
        return false
    }
    
    func didWin(score: UInt){
    tokens += score
    }

    
    func didLose(score: UInt) {
        tokens -= score
    }
    
    
    
    func evilAce () -> Int {
        var counter = 0
        for card in cards{
            if card.rank == "A"{
            counter += 1
            }
        }
        return counter
    }
   // func ace() {
        
//        var score = 0
//        for card in cards{
//        score += card.cardValue
//            if score < 11 && card.cardValue == 1{
//            score += 10
//            }
//            //handscore = score
//        }
        

        
        
        
//       if !cards.isEmpty  && self.handscore < 11{
//        for card in self.cards {
//            var score = 0
//            score += card.cardValue
//            if card.cardValue == 1{
//                card.cardValue += 10
//            }
//        }
//        }
   // }
    
    
    }

//}