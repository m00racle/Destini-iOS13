//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol StoryTemplate {
    var title : String { get }
    var choice1 : String { get }
    var choice1Destination : Int { get }
    var choice2 : String { get }
    var choice2Destination : Int { get }
}

struct Story : StoryTemplate {
    var title: String
    
    var choice1: String
    
    var choice1Destination: Int
    
    var choice2: String
    
    var choice2Destination: Int
    
}
