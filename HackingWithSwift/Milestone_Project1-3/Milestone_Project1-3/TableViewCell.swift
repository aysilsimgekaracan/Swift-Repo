//
//  TableViewCell.swift
//  Milestone_Project1-3
//
//  Created by Ayşıl Simge Karacan on 29.07.2020.
//  Copyright © 2020 Ayşıl Simge Karacan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var flagImageView: UIImageView!
    @IBOutlet var flagLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
