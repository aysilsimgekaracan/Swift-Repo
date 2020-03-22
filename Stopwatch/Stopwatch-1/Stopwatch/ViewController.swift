//
//  ViewController.swift
//  Stopwatch
//
//  Created by Ayşıl Simge Karacan on 28.10.2019.
//  Copyright © 2019 Ayşıl Simge Karacan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var time = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func timeFormat() {
        
    }

    @IBAction func StopButtonPressed(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func startButtonPressed(_ sender: Any) {
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            self.time += 1

            
            var minutes = 0
            var seconds = 0
            var hours = 0
 
            if self.time > 60 {
                if self.time > 3600 {
                    hours = self.time / 3600
                    minutes = minutes % 60
                    seconds = self.time % 60
                } else {
                    hours = 0
                    minutes = self.time / 60
                    seconds = self.time % 60
                }
            } else {
                hours = 0
                minutes = 0
                seconds = self.time
            }
                
            self.timeLabel.text = String("\(hours) : \(minutes) : \(seconds)")
        })
    }
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        timer.invalidate()
        time = 0
        timeLabel.text = String(time)
        
    }
    
}


/*
 func timerDiscount() {
             let hours = secs / 3600
             let mins = secs / 60 % 60
             let secs = secs % 60
             let restTime = ((hours<10) ? "0" : "") + String(hours) + ":" + ((mins<10) ? "0" : "") + String(mins) + ":" + ((secs<10) ? "0" : "") + String(secs)
 }
 
 */
