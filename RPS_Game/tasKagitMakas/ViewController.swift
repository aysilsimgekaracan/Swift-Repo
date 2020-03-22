//
//  ViewController.swift
//  tasKagitMakas
//
//  Created by Ayşıl Simge Karacan on 26.01.2020.
//  Copyright © 2020 Ayşıl Simge Karacan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userChoiceLabel: UILabel!
    @IBOutlet weak var randomChoiceLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var userScoreLabel: UILabel!
    @IBOutlet weak var compScoreLabel: UILabel!
    
    var userChoice : Int = 0
    var compChoice = -1
    var userScore = 0
    var compScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tasButtonClicked(_ sender: Any) {
        userChoice = 0
        compChoice = Int(arc4random_uniform(2)) //0,1,2
        
        findChoice()
        findScore()
        winner()
    }
    
    @IBAction func kagitButtonClicked(_ sender: Any) {
        userChoice = 1
        compChoice = Int(arc4random_uniform(2)) //0,1,2
        
        findChoice()
        findScore()
        winner()
    }
    
    @IBAction func makasButtonClicked(_ sender: Any) {
        userChoice = 2
        compChoice = Int(arc4random_uniform(2)) //0,1,2
        
        findChoice()
        findScore()
        winner()
    }
    
    func findChoice() {
        
        switch userChoice {
        case 0:
            userChoiceLabel.text = "Your Choice: Rock"
        case 1:
            userChoiceLabel.text = "Your Choice: Paper"
        case 2:
            userChoiceLabel.text = "Your Choice: Scissors"
        default:
            randomChoiceLabel.text = "Wrong Choice"
        }
        
        switch compChoice {
        case 0:
            randomChoiceLabel.text = "Computer's Choice: Rock"
        case 1:
            randomChoiceLabel.text = "Computer's Choice: Paper"
        case 2:
            randomChoiceLabel.text = "Computer's Choice: Scissors"
        default:
            randomChoiceLabel.text = "Wrong Choice"
        }
    }
    
    func findScore(){
        if (userChoice == 0 && compChoice == 2) || (userChoice == 2 && compChoice == 1) || (userChoice == 1 && compChoice == 0) {
            userScore += 1
            userScoreLabel.text = String(userScore)
            compScoreLabel.text = String(compScore)
        } else if(userChoice == compChoice) {

        } else {
            compScore += 1
            compScoreLabel.text = String(compScore)
            userScoreLabel.text = String(userScore)
        }
    }
    
    func winner() {
        
        if userScore + compScore == 3 {
            if userScore > compScore {
                winnerLabel.text = "You win.\nChosse an option to start over."
            } else if userScore < compScore {
                winnerLabel.text = "You lose.\nChosse an option to start over."
            } else {
                winnerLabel.text = "Drawn!\nChosse an option to start over."
            }

            userScore = 0
            compScore = 0
        } else {
            winnerLabel.text = "Winner: "
        }
    
    }
    
    

    
}

