//
//  ViewController.swift
//  HackwichFive
//
//  Created by jurican on 2/23/22.
//  Copyright © 2022 jurican. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//Created IBOutlets from Labels
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!

//Part 8.4 Button Label
    @IBOutlet weak var buttonLabel: UIButton!
    
    //Part 6 Declare and Assign 2 variables
    var currentIndex = 0
    var favoritFoodsArray = ["pizza", "tostones", "Baked Ziti", "Prime Rib", "Curry"]
    override func viewDidLoad() {
        super.viewDidLoad()
// Do any additional setup after loading the view.
//Part 5 Set top label to my "Favorite Foods"
        topLabel.text = "My favorite foods"
//Part 7 Display item index 0 at app launch
        bottomLabel.text = favoritFoodsArray[currentIndex]
    }
//Part 8 Set up a if/else statement to iterate through each item in array upon button press
    @IBAction func pressButton(_ sender: Any) {
    if self.currentIndex < favoritFoodsArray.count
    {
        self.bottomLabel.text = favoritFoodsArray[currentIndex]
        buttonLabel.setTitle("Next", for: UIControl.State.normal)
        currentIndex += 1
    }
    else
    {
    print("button has been disabled")
        (buttonLabel!).isEnabled = false
        }
        
}
}
