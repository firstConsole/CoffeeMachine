//
//  CoffeeDecorator.swift
//  CoffeeMachine
//
//  Created by Алексей Артамонов on 25.12.2022.
//

import Foundation

protocol CoffeeDecorator: Coffee {
    var base: Coffee { get }
    
    init(base: Coffee)
}
