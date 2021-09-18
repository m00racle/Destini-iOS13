//
//  StoryTeller.swift
//  Destini-iOS13
//
//  Created by Yanuar Heru on 18/09/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

protocol StoryTeller {
    var storyBook : [StoryTemplate] { get }
    var page : Int { get set }
    
    func putStory() -> String
    func putChoices() -> [String]
    mutating func nextPage(choice : String)
}

struct Narrator : StoryTeller {
    
    var storyBook: [StoryTemplate]
    
    var page: Int = 0
    
    func putStory() -> String {
        return storyBook[page].title
    }
    
    func putChoices() -> [String] {
        return [storyBook[page].choice1, storyBook[page].choice2]
    }
    
    
    mutating func nextPage(choice: String) {
        if choice == storyBook[page].choice1 {
            page = storyBook[page].choice1Destination
        } else {
            page = storyBook[page].choice2Destination
        }
    }
    
    
}
