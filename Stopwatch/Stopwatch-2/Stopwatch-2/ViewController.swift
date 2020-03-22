//
//  ViewController.swift
//  Stopwatch-2
//
//  Created by Ayşıl Simge Karacan on 24.02.2020.
//  Copyright © 2020 Ayşıl Simge Karacan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: VARIABLES
    
    var timer = Timer();
    var time = 0
    
    //MARK: IBActions
    
    @IBAction func startButtonPressed(_ sender: Any) {
        
        startButton.isEnabled = false
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            
                self.time += 1
                
                let hours = self.time / 3600
                let minutes = (self.time / 60) - (hours * 60)
                let seconds = self.time % 60
                
                self.timeLabel.text = ("\(hours) : \(minutes) : \(seconds)")
 
        })
        
    }
    
    @IBAction func stopButtonPressed(_ sender: Any) {
        timer.invalidate()
        
        self.startButton.title = "Continue"
        startButton.isEnabled = true
    }
    
    @IBAction func sBackButtonPressed(_ sender: Any) {
        if time < 10 {
            time = 0
        } else {
            time -= 10
        }
        
    }
    
    @IBAction func sForwardButtonPressed(_ sender: Any) {
        time += 10
    }
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        
        timer.invalidate()
        time = 0
        timeLabel.text = String(time)
        
        startButton.isEnabled = true
        startButton.title = "Start"
        
        
    }
    
    //MARK: IBAOutlets
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var startButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

