//
//  JoblistTableViewCell.swift
//  Qolega
//
//  Created by Bondan Eko Prasetyo on 3/13/17.
//  Copyright © 2017 B-Soft. All rights reserved.
//

import UIKit

class JoblistTableViewCell: UITableViewCell {

    @IBOutlet weak var jobTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
