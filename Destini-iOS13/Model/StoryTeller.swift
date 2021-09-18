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
    
    func putStory()
    mutating func nextPage(choice : Int)
}
