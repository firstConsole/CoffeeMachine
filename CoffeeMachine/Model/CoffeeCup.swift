//
//  CoffeeCup.swift
//  CoffeeMachine
//
//  Created by Алексей Артамонов on 27.12.2022.
//

import Foundation

final class CoffeeCup: CoffeeDecorator {
    var base: Coffee
    
    var sugar: Double {
        if base.sugar > 1 {
            return 10 * base.sugar
        } else {
            return 0
        }
    }
    
    var cream: Double {
        if base.cream.isFinite {
            return base.cost + 30
        } else {
            return 0
        }
    }
    
    var ice: Double {
        if base.ice > 1 {
            return base.cost * 10
        } else {
            return 0
        }
    }
    
    var volume: Double {
        if base.volume > 0.3 {
            return base.cost + 50.0
        } else {
            return base.cost
        }
    }
    
    var cost: Double {
        return base.cost
    }
    
    required init(base: Coffee) {
        self.base = base
    }
}
