//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    let stories = [
        Story(title: "You see a fork in the road", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    var storyPosition = 0
    
    func getStoryText() -> String {
        return stories[storyPosition].title
    }
    
    func getChoice1Title() -> String {
        return stories[storyPosition].choice1
    }
    
    func getChoice2Title() -> String {
        return stories[storyPosition].choice2
    }
    
    mutating func nextStory(_ userChoice: String) {
        if userChoice == stories[storyPosition].choice1 {
            storyPosition += 1
        } else {
            storyPosition += 2
        }
    }
}
