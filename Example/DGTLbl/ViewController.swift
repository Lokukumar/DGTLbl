//
//  ViewController.swift
//  LKLabel
//
//  Created by Lokesh Kumar on 08/08/2020.
//  Copyright (c) 2020 Lokesh Kumar. All rights reserved.
//

import UIKit
import DGTLbl

class ViewController: UIViewController {
       var isBlinking = false
    let blinkingLabel = DGTLbl(frame: CGRect.init(x: 100, y: 200, width: 200, height: 30))
    
       override func viewDidLoad() {
           super.viewDidLoad()
    
           // Setup the BlinkingLabel
           blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
           view.addSubview(blinkingLabel)
           blinkingLabel.startBlinking()
           isBlinking = true
    
           // Create a UIButton to toggle the blinking
           let toggleButton = UIButton(frame: CGRect.init(x: 100, y: 150, width: 125, height: 30))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(UIColor.red, for: .normal)
        toggleButton.addTarget(self, action: #selector(toggleBlinking), for: .touchUpInside)
           view.addSubview(toggleButton)
       }
    
    @objc func toggleBlinking() {
           if (isBlinking) {
               blinkingLabel.stopBlinking()
           } else {
               blinkingLabel.startBlinking()
           }
           isBlinking = !isBlinking
       }
}

