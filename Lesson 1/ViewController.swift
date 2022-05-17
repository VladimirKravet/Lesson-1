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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redColor.isHidden = true
        stertBotton.layer.cornerRadius = 10
    }
    
    @IBAction func makeButtomAction() {
    if redColor.isHidden {
        redColor.isHidden = false
        stertBotton.setTitle("Next", for: .normal)
    } 
    }
    override func viewWillLayoutSubviews() {
        
        redColor.layer.cornerRadius = redColor.frame.width / 2
        yellowColor.layer.cornerRadius = redColor.frame.width / 2
        greenColor.layer.cornerRadius = redColor.frame.width / 2
        
        print("Размер стороны доступный из viewWillLayoutSubviews: ", redColor.frame.height)
    }
    }


