//
//  ViewController.swift
//  Milestone_Project1-3
//
//  Created by Ayşıl Simge Karacan on 29.07.2020.
//  Copyright © 2020 Ayşıl Simge Karacan. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var countries = ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries.sort()
        
        // big title
        title = "Flags"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Flag", for: indexPath) as! TableViewCell
        //show country names
        //cell.textLabel?.text = countries[indexPath.row].uppercased()
        
        // show flag images
        //cell.imageView?.image = UIImage(named: countries[indexPath.row])
        
        // show both with custom cell
        cell.flagImageView.image = UIImage(named: self.countries[indexPath.row])
        cell.flagLabel.text = self.countries[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "Detail") as? DetailViewController {
            vc.selectedImage = countries[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }


}

