//
//  SimpleCoffee.swift
//  CoffeeMachine
//
//  Created by Алексей Артамонов on 25.12.2022.
//

import UIKit

protocol Coffee {
    var sugar: Double { get }
    var cream: Double { get }
    var ice: Double { get }
    var volume: Double { get }
    var cost: Double { get }
}

final class SimpleCoffee: Coffee {
    var cost: Double {
        return 100
    }
    
    var sugar: Double {
        return 0
    }
    
    var cream: Double {
        return 0
    }
    
    var ice: Double {
        return 0
    }
    
    var volume: Double {
        return 50
    }
}
