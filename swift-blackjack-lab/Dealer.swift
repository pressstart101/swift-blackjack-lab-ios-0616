//
//  Dealer.swift
//  swift-blackjack-lab
//
//  Created by Flatiron School on 7/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Dealer {
    var deck = Deck()
    var house = House(name:"House")// "House"
    var player =  House(name: "Player") // "Player"
    var bet: UInt = 0
    

    func deal() {
        house.stayed = false
        player.stayed = false
        house.cards.removeAll()
        player.cards.removeAll()
        house.cards.append(deck.drawCard())
        house.cards.append(deck.drawCard())
        player.cards.append(deck.drawCard())
        player.cards.append(deck.drawCard())
    }
    
    func placeBet(bet: UInt) -> Bool {
        
        if house.canPlaceBet(bet) == true && player.canPlaceBet(bet) == true{
            self.bet = bet
        return true
        }
        self.bet = 0
        return false
    }
    
    
    
    func turn(whosTurn: House) {
        if whosTurn.mayHit == true{
        print("wish to stay?")
            if whosTurn.mustHit == true {
                house.cards.append(deck.drawCard())
            }else {
            whosTurn.stayed = true
            }
        }
    }
    
    func winner() -> String {
        
        
        //should return 'player' if the house and player have stayed and player's score exceeds the house's score"
        
        if player.busted {
            return "house"
        }else if house.busted{
            return "player"
        }else if player.handscore == house.handscore{
            return "house"
        }else if player.cards.count == 5 && player.busted == false {
            return "player"
        }else if player.blackjack && house.blackjack{
            return "push"
        }else if player.blackjack{
            return "player"
        }else if house.blackjack{
            return "house"
        }else if house.stayed && player.stayed{
        return "player"
        }
        else{
            return "no"
        }
    // return ""
    }
    
    func award() -> (String) {
        if winner() == "player"{
            player.didWin(bet)
            house.didLose(bet)
            return "player wins"
        }else if winner() == "house"{
            player.didLose(bet)
            house.didWin(bet)
            return "house wins"
        }
        return "no winner"
    }
}














