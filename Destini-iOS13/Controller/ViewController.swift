//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var teller : StoryTeller = Narrator(storyBook: Story_Eng_Exam().storyBook)
    let forState = UIControl.State.normal

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    @IBAction func playerChoose(_ sender: UIButton) {
        sender.backgroundColor = UIColor.gray
        teller.nextPage(choice: sender.currentTitle ?? "")
//        add delay before update UI
        _ = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false, block: {_ in self.updateUI()})
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
//        update the UI
        storyLabel.text = teller.putStory()
        let choices = teller.putChoices()
        choice1Button.setTitle(choices[0], for: forState)
        choice2Button.setTitle(choices[1], for: forState)
    }


}

