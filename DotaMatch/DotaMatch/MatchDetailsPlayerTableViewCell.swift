//
//  MatchDetailsPlayerTableViewCell.swift
//  DotaMate
//
//  Created by Philip DesJean on 9/11/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit

class MatchDetailsPlayerTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var heroBackground: UIImageView!
    @IBOutlet weak var countryImageView: UIImageView!
    @IBOutlet weak var playerProfileImage: UIImageView!
    @IBOutlet weak var playerNameLabel: UILabel!
    
    @IBOutlet weak var estimatedMMRLabel: UILabel!
    @IBOutlet weak var killsLabel: UILabel!
    @IBOutlet weak var assistsLabel: UILabel!
    @IBOutlet weak var deathsLabel: UILabel!
    @IBOutlet weak var lastHitLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var goldLabel: UILabel!
    
    @IBOutlet weak var heroTiny: UIImageView!
    
    @IBOutlet weak var itemView: UIView!
    @IBOutlet weak var item1: UIImageView!
    @IBOutlet weak var item2: UIImageView!
    @IBOutlet weak var item3: UIImageView!
    @IBOutlet weak var item4: UIImageView!
    @IBOutlet weak var item5: UIImageView!
    @IBOutlet weak var item6: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
