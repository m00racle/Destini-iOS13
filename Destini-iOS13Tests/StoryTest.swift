//
//  StoryTest.swift
//  Destini-iOS13Tests
//
//  Created by Yanuar Heru on 18/09/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

@testable import Destini_iOS13
import XCTest

class StoryTest: XCTestCase {

    var story : StoryTemplate!
    
    override func setUp() {
        super.setUp()
        story = Story(
            title: "Your car has blown a tire",
            choice1: "I'll hop in. Thanks for the help!", choice1Destination: 2,
            choice2: "Better ask him if he's a murderer first.", choice2Destination: 1
        )
    }
    
    override func tearDown() {
        story = nil
        super.tearDown()
    }
    
    func test_get_title() {
        XCTAssertEqual(story.title, "Your car has blown a tire")
    }
    
    func test_get_choice1() {
        XCTAssertEqual(story.choice1, "I'll hop in. Thanks for the help!")
    }
    
    func test_get_choice2() {
        XCTAssertEqual(story.choice2, "Better ask him if he's a murderer first.")
    }
    
    func test_get_destination1() {
        XCTAssertEqual(story.choice1Destination, 2)
    }

}
