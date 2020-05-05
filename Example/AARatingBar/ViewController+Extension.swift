//
//  ViewController+Extension.swift
//  AARatingBar
//
//  Created by Muhammad Ahsan on 06/02/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit


extension ViewController {
    
    func ratingInteraction(_ sender: UIButton) {
        guard let customRatingBar = ratingbar else {
            return
        }
        customRatingBar.isEnabled = sender.isSelected
        
        if customRatingBar.isEnabled {
            sender.setTitle("Click to disable!", for: .normal)
        }
        else {
            sender.setTitle("Click to enable!", for: .selected)
        }
        
        sender.isSelected = !sender.isSelected
    }
    
}
