//
//  MainViewController.swift
//  CoffeeMachine
//
//  Created by Алексей Артамонов on 25.12.2022.
//

import UIKit

final class MainViewController: UIViewController {
    
    // MARK: - IBOutlets

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var volumeStepper: UIStepper!
    @IBOutlet weak var volumeLabel: UILabel!
    @IBOutlet weak var sugarStepper: UIStepper!
    @IBOutlet weak var sugarLabel: UILabel!
    @IBOutlet weak var iceLabel: UILabel!
    @IBOutlet weak var iceStepper: UIStepper!
    @IBOutlet weak var creamSegmentControll: UISegmentedControl!
    @IBOutlet weak var costLabel: UILabel!
    
    // MARK: - Properties
    
    var volume: String = ""
    var sugar: String = ""
    var ice: String = ""
    var cream: Bool = false
    let simpleCoffee = SimpleCoffee()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 20
        
        stepperConfigure(autorepeat: true,
                         isContinuous: true,
                         minVal: 0.3,
                         maxVal: 0.5,
                         step: 0.2,
                         text: volumeLabel,
                         stepper: volumeStepper)
        
        stepperConfigure(autorepeat: true,
                         isContinuous: true,
                         minVal: 0.0,
                         maxVal: 4.0,
                         step: 1.0,
                         text: sugarLabel,
                         stepper: sugarStepper)
        
        stepperConfigure(autorepeat: true,
                         isContinuous: true,
                         minVal: 0,
                         maxVal: 5,
                         step: 1,
                         text: iceLabel,
                         stepper: iceStepper)
    }
    
    
    @IBAction func volumeAction(_ sender: UIStepper) {
        volumeLabel.text = sender.value.description
        volume = volumeLabel.text ?? ""
        print(volume)
    }
    
    @IBAction func sugarAction(_ sender: UIStepper) {
        sugarLabel.text = sender.value.description
        sugar = sugarLabel.text ?? ""
        print(sugar)
    }
    
    @IBAction func iceAction(_ sender: UIStepper) {
        iceLabel.text = sender.value.description
        ice = iceLabel.text ?? ""

        print(ice)
    }
    
    
    @IBAction func creamSegment(_ sender: UISegmentedControl) {
        switch self.creamSegmentControll {
        case .none:
            cream = false
            print(cream)
        case .some(_):
            cream = true
            print(cream)
        }
    }
    
    @IBAction func doCoffee(_ sender: UIButton) {
        
        let coffeeCup = CoffeeCup(base: simpleCoffee)
        let finalCost = coffeeCup.cost
        
        costLabel.text = String(finalCost)
        
    }
}
