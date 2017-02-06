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
        
        configRatingBar()
  
    }

    @IBAction func ratingBarInteraction(_ sender: UIButton) {
        
        ratingInteraction(sender)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

