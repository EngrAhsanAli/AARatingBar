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

    @IBOutlet weak var customRatingBar: AARatingBar!
    
    @IBOutlet weak var tableView: UITableView!
    
    var data = [RatingModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        configRatingBar()
  
        
        customRatingBar.starFont = UIFont.init(name: "AARatingBar", size: 10)!
        
        
        for i in 1...10 {
            data.append(RatingModel.init(rating: 0, isEnabled: true, stars: i))
        }
        
        tableView.reloadData()
        
    }

    @IBAction func ratingBarInteraction(_ sender: UIButton) {
        
        ratingInteraction(sender)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        let ratingbar = cell.viewWithTag(100) as! AARatingBar
        
        let item = data[indexPath.row]
        print("previous rating ", item.rating)
        ratingbar.isEnabled = item.isEnabled
        ratingbar.value = item.rating
        ratingbar.maxValue = item.stars
        ratingbar.ratingDidChange = {
            self.data[indexPath.row].rating = $0
            print("New rating ", self.data[indexPath.row].rating)
        }
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
}


struct RatingModel {
    var rating: CGFloat
    var isEnabled: Bool
    var stars: Int
}
