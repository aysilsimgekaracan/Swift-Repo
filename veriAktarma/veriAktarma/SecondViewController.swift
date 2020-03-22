//
//  SecondViewController.swift
//  veriAktarma
//
//  Created by Ayşıl Simge Karacan on 14.10.2019.
//  Copyright © 2019 Ayşıl Simge Karacan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var displayedTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.standard.synchronize()
        
    }
    
    // Sayfaya her tıklandığında text bilgisini kontrol et ve kullanıcıya göster.
    
    override func viewDidAppear(_ animated: Bool) {
        
        self.displayedTextView.text = UserDefaults.standard.object(forKey: "text") as? String
        
        UserDefaults.standard.synchronize()
    }

}

