//
//  House.swift
//  swift-blackjack-lab
//
//  Created by Flatiron School on 7/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class House: Player {
    
    var wallet: UInt = 0

    override init(name: String) {
        
        super.init(name: name)
        
        self.tokens = 1000
        self.wallet = tokens
        wallet = 1000
    }
    
    
    
    var mustHit: Bool{
        if self.handscore < 17{
            return true
        }
        return false
    }
    
    
    }
    
