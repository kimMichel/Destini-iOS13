//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyTextLabel: UILabel!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    
    let stories = [
        Story(title: "You see a fork in the road", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    var storyPosition = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyTextLabel.text = stories[storyPosition].title
        leftButton.setTitle(stories[storyPosition].choice1, for: .normal)
        rightButton.setTitle(stories[storyPosition].choice2, for: .normal)
    }


}

