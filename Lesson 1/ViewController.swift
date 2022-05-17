//
//  ViewController.swift
//  Lesson 1
//
//  Created by Vladimir Kravets on 12.05.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redColor: UIView!
    @IBOutlet var yellowColor: UIView!
    @IBOutlet var greenColor: UIView!
    
    @IBOutlet var stertBotton: UIButton!
    
    enum CurrentLight {
        case red, yellow, green
    }
    
    var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stertBotton.layer.cornerRadius = 10
        redColor.alpha = lightIsOff
        yellowColor.alpha = lightIsOff
        greenColor.alpha = lightIsOff
        
        print("Размер стороны доступный из viewDidLoad: ", redColor.frame.height)
    }
    

    override func viewWillLayoutSubviews() {
        
        redColor.layer.cornerRadius = redColor.frame.width / 2
        yellowColor.layer.cornerRadius = redColor.frame.width / 2
        greenColor.layer.cornerRadius = redColor.frame.width / 2
        
        print("Размер стороны доступный из viewWillLayoutSubviews: ", redColor.frame.height)
    }
    
    @IBAction func makeAction() {
        stertBotton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            greenColor.alpha = lightIsOff
            redColor.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redColor.alpha = lightIsOff
            yellowColor.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenColor.alpha = lightIsOn
            yellowColor.alpha = lightIsOff
            currentLight = .red
        }
    }
}

