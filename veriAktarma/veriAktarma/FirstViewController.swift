//
//  FirstViewController.swift
//  veriAktarma
//
//  Created by Ayşıl Simge Karacan on 14.10.2019.
//  Copyright © 2019 Ayşıl Simge Karacan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var newTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func saveButtonClicked(_ sender: Any) {
        
        // Text varsa UserDefaultsa texti kaydet
        
        if newTextView.text != "" {
            
            UserDefaults.standard.set(newTextView.text, forKey: "text")
            UserDefaults.standard.synchronize()
            
            // textin kaydedildiğine dair kullanıcıya uyarı yolla
            
            let alert = UIAlertController(title: "Saved", message: "Your text is saved", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
            self.present(alert, animated: true)
            
            //save butonuna basıldıktan sonra texti temizle
            
            newTextView.text = ""
            
        } else if newTextView.text == "" { // newTextView.text boşsa kullanıcıyı uyar
        
        let alert = UIAlertController(title: "Error", message: "You didn't type anything", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
        self.present(alert, animated: true)
            
        }
    }
    
}

