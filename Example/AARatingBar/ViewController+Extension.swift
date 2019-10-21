//
//  ViewController+Extension.swift
//  AARatingBar
//
//  Created by Muhammad Ahsan on 06/02/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit


extension ViewController {
    
    func configRatingBar() {
        rating.text = "Rating: \(ratingBar.value)"
        ratingBar.ratingDidChange = { ratingValue in
            self.rating.text = "Rating: \(ratingValue)"
            
            print("Rating Is Empty: ", self.ratingBar.isEmpty)
            
        }
    }
    
    func ratingInteraction(_ sender: UIButton) {
        ratingBar.isEnabled = sender.isSelected
        
        if ratingBar.isEnabled {
            sender.setTitle("Click to disable!", for: .normal)
        }
        else {
            sender.setTitle("Click to enable!", for: .selected)
        }
        
        sender.isSelected = !sender.isSelected
    }
    
}
