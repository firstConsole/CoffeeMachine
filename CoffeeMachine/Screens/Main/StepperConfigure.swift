//
//  StepperConfigure.swift
//  CoffeeMachine
//
//  Created by Алексей Артамонов on 25.12.2022.
//

import UIKit

extension MainViewController {
    func stepperConfigure(autorepeat: Bool,
                          isContinuous: Bool,
                          minVal: Double,
                          maxVal: Double,
                          step: Double,
                          text: UILabel,
                          stepper: UIStepper) {
        
        stepper.autorepeat = autorepeat
        stepper.isContinuous = isContinuous
        stepper.minimumValue = minVal
        stepper.maximumValue = maxVal
        stepper.stepValue = step
        
        text.text = stepper.value.description
    }
}
