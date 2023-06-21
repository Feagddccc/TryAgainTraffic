//
//  ViewController.swift
//  TryAgainTraffic
//
//  Created by Андрей Платунов on 15.06.2023.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let LightIsOn: CGFloat = 1
    private let LightIsOff: CGFloat = 0.3
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = LightIsOff
        yellowLight.alpha = LightIsOff
        greenLight.alpha = LightIsOff
        
        redLight.layer.cornerRadius =
        redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
        @IBAction func starButtonPressed() {
            if startButton.currentTitle == "Start" {
                startButton.setTitle("Next", for: .normal)
            }
            
            switch currentLight {
                case .red:
                    greenLight.alpha = LightIsOff
                    redLight.alpha = LightIsOn
                    currentLight = .yellow
                case .yellow:
                    redLight.alpha = LightIsOff
                    yellowLight.alpha = LightIsOn
                    currentLight = .green
                case .green:
                    greenLight.alpha = LightIsOn
                    yellowLight.alpha = LightIsOff
                    currentLight = .red
            }
        }
    }


}

