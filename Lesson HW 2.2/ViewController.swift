//
//  ViewController.swift
//  Lesson HW 2.2
//
//  Created by user246073 on 9/3/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var turnOnButton: UIButton!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var redLight: UIView!
    
//    var workLight = 0
  
    enum CollorTraffic {
        case red, yellow, green
    }
    
    var currentState: CollorTraffic =  .red
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        turnOnButton.layer.cornerRadius = 10
        greenLight.layer.cornerRadius = 55
        redLight.layer.cornerRadius = 55
        yellowLight.layer.cornerRadius = 55
        
        offTrafficLight()

    }

    

    @IBAction func turnOnTrafficLight(_ sender: UIButton) {
        turnOnButton.setTitle("NEXT", for: .normal)
              
        switch currentState {
            
        case .red:
            offTrafficLight()
            redLight.alpha = 1
            currentState = .yellow
        case .yellow:
            offTrafficLight()
            yellowLight.alpha = 1
            currentState = .green
        case .green:
            offTrafficLight()
            greenLight.alpha = 1
            currentState = .red
        }
    }
    private func offTrafficLight() {
        redLight.alpha = 0.5
        yellowLight.alpha = 0.5
        greenLight.alpha = 0.5
    }
}
    



