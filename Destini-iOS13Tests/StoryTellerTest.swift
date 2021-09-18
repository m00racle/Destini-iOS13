//
//  StoryTellerTest.swift
//  Destini-iOS13Tests
//
//  Created by Yanuar Heru on 18/09/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

@testable import Destini_iOS13
import XCTest

class StoryTellerTest: XCTestCase {

    var teller : StoryTeller!
    
    override func setUp() {
        super.setUp()
        teller = Narrator(storyBook: Story_Eng_Exam().storyBook)
    }
    
    override func tearDown() {
        teller = nil
        super.tearDown()
    }
    
    func test_put_first_page() {
        XCTAssertEqual(teller.putStory(), "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.")
    }
    
    func test_put_choices() {
        XCTAssertEqual(teller.putChoices(), ["I'll hop in. Thanks for the help!", "Better ask him if he's a murderer first."])
    }
    
    func test_next_page_choice1() {
//        action
        teller.nextPage(choice: "I'll hop in. Thanks for the help!")
        XCTAssertEqual(teller.page, 2)
    }
    
    func test_next_page_choice2() {
//        action
        teller.nextPage(choice: "Better ask him if he's a murderer first.")
        XCTAssertEqual(teller.page, 1)
    }

}
