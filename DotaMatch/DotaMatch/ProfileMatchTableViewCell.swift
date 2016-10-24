//
//  ProfileMatchTableViewCell.swift
//  DotaMatch
//
//  Created by Yerbol Kopzhassar on 23/10/2016.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit

class ProfileMatchTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet weak var radianOrDireImage: UIImageView!
    
    @IBOutlet weak var timeAgoNumber: UILabel!
    @IBOutlet weak var serverText: UILabel!
    @IBOutlet weak var timeSpent: UILabel!
    @IBOutlet weak var assistNumber: UILabel!
    @IBOutlet weak var deathsNumber: UILabel!
    @IBOutlet weak var killsNumbers: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
