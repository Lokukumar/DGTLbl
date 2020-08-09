//
//  DGTLbl.swift
//  DGTLbl
//
//  Created by Lokesh Kumar on 09/08/20.
//

import Foundation
import UIKit

public class DGTLbl : UILabel {
    public func startBlinking() {
        let options : UIViewAnimationOptions = .repeat
        UIView.animate(withDuration: 0.25, delay:0.0, options:options, animations: {
            self.alpha = 0
            }, completion: nil)
    }
 
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
