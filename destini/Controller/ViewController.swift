//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        storyBrain.checkAnswer(userAnswer)
        updateUI()
    }
    
    func updateUI () {
        storyLabel.text = storyBrain.getLabel()
        choice1Button.setTitle(storyBrain.getChoice(1), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice(2), for: .normal)
        if storyBrain.storyNumber > 2 {
            choice1Button.isHidden = true
            choice2Button.setTitle("The end.", for: .normal)
        } else {
            choice1Button.isHidden = false
        }
    }
}

