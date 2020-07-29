//
//  DetailViewController.swift
//  Milestone_Project1-3
//
//  Created by Ayşıl Simge Karacan on 29.07.2020.
//  Copyright © 2020 Ayşıl Simge Karacan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //title
        title = "Picture of \(selectedImage?.uppercased() ?? "Unkwown")"
        navigationItem.largeTitleDisplayMode = .never
        
        // add gray borders to imageView
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleToFill
        self.imageView.layer.borderWidth = 1
        self.imageView.layer.borderColor = UIColor.lightGray.cgColor
        
        // show selected image
        imageView.image = UIImage(named: selectedImage!)
        
        // share the flag and country name
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
    }
    
    // share bar button item
    @objc func shareTapped() {
        guard let flag = imageView.image?.jpegData(compressionQuality: 0.8) else {
            print("No image found")
            return
        }
        
        guard let countryName = selectedImage else {
            print("No text found")
            return
        }
        
        let vc = UIActivityViewController(activityItems: [flag, countryName], applicationActivities: nil)
        
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

}
