//
//  ViewController.swift
//  AARatingBar
//
//  Created by Engr. Ahsan Ali on 12/01/2017.
//  Copyright (c) 2017 AA-Creations. All rights reserved.
//

import UIKit
import AARatingBar

class ViewController: UIViewController {

    @IBOutlet weak var rating: UILabel!
    
    @IBOutlet weak var ratingBar: AARatingBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        rating.text = "Rating: \(ratingBar.value)"
        ratingBar.ratingDidChange = { ratingValue in
            self.rating.text = "Rating: \(ratingValue)"
            
            print("RatingIsEmpty: ", self.ratingBar.isEmpty)
            
        }

        
  
    }

    @IBAction func ratingBarInteraction(_ sender: UIButton) {
        
        ratingBar.isEnabled = sender.isSelected
        
        if ratingBar.isEnabled {
            sender.setTitle("Click to disable!", for: .normal)
        }
        else {
            sender.setTitle("Click to enable!", for: .selected)
        }

        sender.isSelected = !sender.isSelected
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

