//
//  Card.swift
//  swift-blackjack-lab
//
//  Created by Flatiron School on 7/11/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
class Card {
    var suit: String
    var rank: String
    var cardValue: Int
    var cardLabel: String
    var description: String{
        return "\(cardLabel)"
    }
    
    init(suit: String, rank: String){
        self.suit = suit
        self.rank = rank
        self.cardLabel = "\(suit)\(rank)"
        if rank == "J" || rank == "K" || rank == "Q"{
            self.cardValue = 10
        }else if rank == "A"{
            self.cardValue = 1
        }else{
            self.cardValue = Int(rank)!
        }
   
        
        
    }
    
    class func validSuits() -> [String]{
        let validSuits = ["♠", "♥", "♦", "♣︎"]
        return validSuits
    }
    
    
    class func validRanks() -> [String] {
        let validRanks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        return validRanks
    }
    
}